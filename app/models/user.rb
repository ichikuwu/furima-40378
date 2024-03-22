class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  validates :nickname, presence: true, length: { maximum: 6 }
  validates :last_name,presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name,presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :last_name_kana,presence: true, format: { with: /\A[ァ-ヶー]/ }
  validates :first_name_kana,presence: true, format: { with: /\A[ァ-ヶー]/ }
  validates :birthday,presence: true


end
