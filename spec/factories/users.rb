FactoryBot.define do
  factory :user do
    email { '1@1' }
    password { 'aaa111' }
    nickname { 'ニック' }
    last_name { '山' }
    first_name { '陸' }
    last_name_kana { 'ヤマ' }
    first_name_kana { 'リク' }
    birthday { '1930-01-01' }
  end
end