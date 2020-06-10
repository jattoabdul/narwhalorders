require 'rails_helper'

RSpec.describe '/', type: :request do
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

  describe 'GET /index' do
    it 'returns a successful HTTP status' do
      shop = create(:shop)
      login(shop)
      @request.env['rack.url_scheme'] = 'https'
      @request.env['HTTP_X_SHOPIFY_SHOP_DOMAIN'] = shop.shopify_domain
      @request.env['HTTPS'] = 'on'

      @request.session[:shopify] = shop.id
      @request.session[:shop_id] = shop.id
      @request.session[:shopify_domain] = shop.shopify_domain
      shop.define_singleton_method(:domain) do
        shop.shopify_domain
      end

      allow(ShopifyAPI::Shop).to receive(:current).and_return(shop)
      get '/'
      expect(response).to be_successful
    end
  end
end
