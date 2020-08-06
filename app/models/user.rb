class User < ApplicationRecord
  has_many :contacts
  has_many :categories, through: :contact_user

  has_secure_password
  validates :email, presence: true, uniqueness: true
end