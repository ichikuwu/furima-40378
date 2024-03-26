class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one     :order
  belongs_to  :user
  belongs_to :category
  belongs_to :item_condition
  belongs_to :ship_type
  belongs_to :region
  belongs_to :ship_day
  has_one_attached :image

  validates :image,          presence: true
  validates :item_name,      presence: true
  validates :item_memo,      presence: true
  validates :category_id,       numericality: { other_than: 1, message: "can't be blank"}
  validates :item_condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :ship_type_id,      numericality: { other_than: 1 , message: "can't be blank"}
  validates :region_id,         numericality: { other_than: 1 , message: "can't be blank"}
  validates :ship_day_id,       numericality: { other_than: 1 , message: "can't be blank"}
  validates :item_price,     presence: true

end
