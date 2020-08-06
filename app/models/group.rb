class Group < ApplicationRecord
  has_many :contacts
  has_many :categories, through: :contact_groups
end
