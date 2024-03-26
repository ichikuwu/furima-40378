class Item < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one     :order
  belongs_to  :user
  belongs_to :category
  belongs_to :item_condition
  belongs_to :ship_type
  belongs_to :region
  belongs_to :ship_days
  has_one_attached :image

  validates :category, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :item_condition,presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :ship_type,presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :region,presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :ship_days,presence: true, numericality: { other_than: 1 , message: "can't be blank"}
end
