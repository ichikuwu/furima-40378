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
| item_id            | integer| null: false |
| item_price         | integer| null: false |
| user               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- has_many   :order

## orders

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :item
- has_one    :ship

## ships

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| card_id            | integer| null: false |
| ship_id            | integer| null: false |
| user               | references | null: false, foreign_key:true |
| item               | references | null: false, foreign_key:true |

### Association

- has_one    :user
- has_one    :item