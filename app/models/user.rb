class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  validates :user_name, presence: true, length: { maximum: 50 },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates :phone_number, length: { maximum: 11 }, uniqueness: true
  validates :profile, length: { maximum: 300 }
end
