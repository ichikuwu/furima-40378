FactoryBot.define do
  factory :user do
    email {Faker::Internet.email}
    password { '1a' + Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    nickname { 'ニック' }
    last_name { '山' }
    first_name { '陸' }
    last_name_kana { 'ヤマ' }
    first_name_kana { 'リク' }
    birthday { '1930-01-01' }
  end
end