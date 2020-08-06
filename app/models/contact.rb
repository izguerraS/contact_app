class Contact < ApplicationRecord
  belongs_to :user
  has_many :groups
  has_many :categories, through: :contact_groups
end