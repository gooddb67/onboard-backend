class Question < ApplicationRecord
  belongs_to :company
  has_many :answers
end
