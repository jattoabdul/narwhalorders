require 'rails_helper'

RSpec.describe OrdersCreateJob do
  let(:job) { OrdersCreateJob.new }
  let(:shop) { create(:shop) }
  let(:webhook) do
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

  it 'calls NarwhalOrder #create' do
    job.perform(shop.shopify_domain, webhook.to_json)
    expect(NarwhalOrder.count).to eql(1)
  end

  context 'without narwhal order' do
    let(:webhook) do
      {
        id: '123',
        order_number: '1023',
        customer: {
          first_name: 'John',
          last_name: 'Doe'
        },
        line_items: [{ name: 'Nike Shoe' }]
      }
    end

    it 'doesn\'t call NarwhalOrder #create' do
      job.perform(shop.shopify_domain, webhook.to_json)
      expect(NarwhalOrder.count).to eql(0)
    end
  end
end
