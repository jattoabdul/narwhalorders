# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    shop_domain = ShopifyAPI::Shop.current.domain
    shop = Shop.find_by(shopify_domain: shop_domain)
    @orders = NarwhalOrder.where(shop: shop.id)
  end
end
