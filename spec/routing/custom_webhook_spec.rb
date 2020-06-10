require 'rails_helper'

RSpec.describe CustomWebhookController, type: :routing do
  describe 'routing' do
    it 'routes to #order_create' do
      expect(post: '/webhooks/orders_create').to route_to('custom_webhook#orders_create')
    end

    it 'routes to #orders_paid' do
      expect(post: '/webhooks/orders_paid').to route_to('custom_webhook#orders_paid')
    end
  end
end
