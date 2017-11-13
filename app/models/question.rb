class Question < ApplicationRecord
  belongs_to :company
  belongs_to :room
  has_many :answers
end
