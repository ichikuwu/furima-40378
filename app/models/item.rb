class Item < ApplicationRecord


  has_one     :order
  belongs_to  :user
  belongs_to_active_hash :category
  belongs_to_active_hash :item_condition
  belongs_to_active_hash :ship_type
  belongs_to_active_hash :region
  belongs_to_active_hash :ship_days

  has_one_attached :image

  validates :category, presence: true
  validates :item_condition,presence: true
  validates :ship_type,presence: true
  validates :region,presence: true
  validates :ship_days,presence: true
end
