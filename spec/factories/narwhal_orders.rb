# frozen_string_literal: true

FactoryBot.define do
  factory :narwhal_order do
    customer { 'MyString' }
    order_id { 'MyString' }
    order_name { 'MyString' }
    shop { nil }
  end
end
