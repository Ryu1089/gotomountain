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
  
  def self.guest 
    find_or_create_by(email: 'guest@example.com',
                       encrypted_password: 1234567,
                      ) do |user|
      user.password = SecureRandom.urlsafe_base64 #パスワードはランダム生成
    end
  end

end
