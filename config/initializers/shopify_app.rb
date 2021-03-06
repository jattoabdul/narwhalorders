# frozen_string_literal: true

ShopifyApp.configure do |config|
  config.application_name = 'My Shopify App'
  config.api_key = ENV['SHOPIFY_API_KEY']
  config.secret = ENV['SHOPIFY_API_SECRET_KEY']
  config.old_secret = ''
  config.scope = 'read_products, read_orders'
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = '2020-04'
  config.shop_session_repository = 'Shop'
  config.webhooks = [
    {
      topic: 'orders/create',
      address: "#{ENV['SHOPIFY_APP_HOST']}/webhooks/orders_create",
      format: 'json'
    },
    {
      topic: 'orders/paid',
      address: "#{ENV['SHOPIFY_APP_HOST']}/webhooks/orders_paid",
      format: 'json'
    }
  ]
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known
