FactoryBot.define do
  factory :item do
    item_name { '商品名' }
    item_memo{ '商品説明' }
    category { Category.find(2) }
    item_condition { ItemCondition.find(2) }
    ship_type { ShipType.find(2) }
    region { Region.find(2) }
    ship_day { ShipDay.find(2) }
    item_price { '300' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
    end
  end
end
