class OrdersPaidJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by!(shopify_domain: shop_domain)
    p "Hello #{shop.name}"
  end
end
class OrdersCreateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    shop.with_shopify_session do
      # redact information related to this shop
      p "Hello #{shop.name}"
    end
  end
end