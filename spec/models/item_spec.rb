require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '新規登録できる場合' do
      it "商品情報が正しく入力されれば登録できる" do
        expect(@item).to be_valid
      end
    end
    context '新規登録できない場合' do
      it "imageが空では登録できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "item_nameが空では登録できない" do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it "item_memoが空では登録できない" do
        @item.item_memo = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item memo can't be blank")
      end
      it "categoryが---では登録できない" do
        @item.category = Category.find(1)
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it "item_conditionが---では登録できない" do
        @item.item_condition = ItemCondition.find(1)
        @item.valid?
        expect(@item.errors.full_messages).to include("Item condition can't be blank")
      end
      it "ship_typeが---では登録できない" do
        @item.ship_type = ShipType.find(1)
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship type can't be blank")
      end
      it "regionが---では登録できない" do
        @item.region = Region.find(1)
        @item.valid?
        expect(@item.errors.full_messages).to include("Region can't be blank")
      end
      it "ship_dayが---では登録できない" do
        @item.ship_day = ShipDay.find(1)
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship day can't be blank")
      end
      it "item_priceが空では登録できない" do
        @item.item_price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item price can't be blank")
      end

      it "item_priceは¥300未満だと登録できない" do
        @item.item_price = 0
        @item.valid?
        expect(@item.errors.full_messages).to include("Item price is invalid")
      end

      it "item_priceは¥10,000,000以上だと登録できない" do
        @item.item_price =  10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Item price is invalid")
      end
      it "item_priceは全角だと登録できない" do
        @item.item_price = '１０００'
        @item.valid?
        expect(@item.errors.full_messages).to include("Item price is invalid")
      end
   end
  end
end
