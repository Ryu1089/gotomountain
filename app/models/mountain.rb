class Mountain < ApplicationRecord
  belongs_to :user
  attachment :image
  
  
  validates :name, presence: true
  validates :season, presence: true
  validates :start, presence: true
  validates :endtime, presence: true
  validates :food, presence: true
  validates :water, presence: true
  validates :image, presence: true
end
