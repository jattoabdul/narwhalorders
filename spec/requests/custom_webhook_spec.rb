require 'rails_helper'

RSpec.describe '/webhooks', type: :request do
  def login(shop)
    OmniAuth.config.test_mode = true
    OmniAuth.config.add_mock(:shopify,
                             provider: 'shopify',
                             uid: shop.shopify_domain,
                             credentials: { token: shop.shopify_token })
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:shopify]

    get '/auth/shopify'
    follow_redirect!
  end

  xdescribe 'POST /orders_create' do
    let(:params) do
      {
        id: '123',
        order_number: '1023',
        customer: {
          first_name: 'John',
          last_name: 'Doe'
        },
        line_items: [{ name: 'Narwhal Shoe' }]
      }
    end

    it 'returns a successful HTTP status' do
      shop = create(:shop)
      login(shop)
      @request.env['rack.url_scheme'] = 'https'
      @request.env['HTTP_X_SHOPIFY_SHOP_DOMAIN'] = shop.shopify_domain
      @request.env['HTTPS'] = 'on'

      @request.session[:shopify] = shop.id
      @request.session[:shop_id] = shop.id
      @request.session[:shopify_domain] = shop.shopify_domain

      allow(ShopifyAPI::Shop).to receive(:current).and_return(shop)
      post webhooks_orders_create_path
      expect(response).to be_successful
    end
  end
end
