class OrdersCreateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)

    if shop.nil?
      logger.error("#{self.class} failed: cannot find shop with domain '#{shop_domain}'")
      return
    end

    shop.with_shopify_session do
      return unless webhook[:line_items].any? { |item| /narwhal/ =~ item['name'] }

      order =
        {
          order_id: webhook[:id],
          order_name: webhook[:order_number],
          customer: "#{webhook[:customer][:first_name]} #{webhook[:customer][:first_name]}"
        }
      order = NarwhalOrder.where(order_id: order[:order_id]).first_or_create(order)
      shop.narwhal_orders << order
    end
  end
end
