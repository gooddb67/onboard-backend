class Company < ApplicationRecord
  has_many :questions
  has_many :company_rooms
  has_many :rooms, through: :company_rooms
end
