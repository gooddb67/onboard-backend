class Room < ApplicationRecord
  has_many :user_rooms
  has_many :users, through: :user_rooms
  has_many :company_rooms
  has_many :companies, through: :company_rooms
end
