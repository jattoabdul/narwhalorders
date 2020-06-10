FactoryBot.define do
  factory :shop do
    shopify_domain { 'example.myshopify.com' }
    shopify_token { '451a2b3er28e07d89iy3df0' }
  end

  factory :invalid_shop, parent: :shop do
    shopify_domain { nil }
    shopify_token { nil }
  end
end
