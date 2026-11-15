FactoryBot.define do
  factory :item do
    name                   { 'オムライス' }
    info                   { '美味しいオムライスです' }
    category_id            { 2 }
    sales_status_id        { 2 }
    shipping_fee_status_id { 2 }
    prefecture_id          { 2 }
    scheduled_delivery_id  { 2 }
    price                  { 1000 }
    association :user

   
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.webp'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end
