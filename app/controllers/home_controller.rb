# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    shop = Shop.find_by(shopify_domain: params[:shop])
    @orders = NarwhalOrder.where(shop: shop.id)
  end
end
