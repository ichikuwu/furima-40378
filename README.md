# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


* ...
# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique:true |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| item_name          | string | null: false |
| item_memo          | text   | null: false |
| item_price         | integer| null: false |
| user               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- has_one   :order
- belongs_to_active_hash :category
- belongs_to_active_hash :item_condition
- belongs_to_active_hash :ship_type
- belongs_to_active_hash :ship_region
- belongs_to_active_hash :ship_days

## orders

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |
| ship               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :ship

## ships

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| postal_code        | string | null: false |
| city               | string | null: false |
| street             | string | null: false |
| Building_name      | string | null: false |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association
- belongs_to :order
- belongs_to_active_hash :prefecture