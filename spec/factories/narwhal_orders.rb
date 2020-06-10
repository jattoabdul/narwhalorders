FactoryBot.define do
  factory :narwhal_order do
    customer { 'John Doe' }
    order_id { '1023' }
    order_name { 'Narwhal Shoe' }

    association :shop, factory: %i[shop]

    trait :non_narwhal_order do
      order_name { 'Nike Shoe' }
    end
  end

  factory :invalid_narwhal_order, parent: :narwhal_order do
    shop { nil }
    order_id { nil }
  end
end
