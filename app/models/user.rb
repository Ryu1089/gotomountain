class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :mountains, dependent: :destroy
  
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :username, presence: true

end
