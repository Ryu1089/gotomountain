class Like < ApplicationRecord
  belongs_to :mountain
  belongs_to :user
  validates_uniqueness_of :mountain_id, scope: :user_id
end
