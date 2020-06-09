class OrdersPaidJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by!(shopify_domain: shop_domain)
    p "Hello #{shop.name}"
  end
end
