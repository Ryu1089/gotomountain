class Mountain < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  
  
  validates :name, presence: true
  validates :season, presence: true
  validates :start, presence: true
  validates :endtime, presence: true
  validates :food, presence: true
  validates :water, presence: true
  validates :image, presence: true
end
