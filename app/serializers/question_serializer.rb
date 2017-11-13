class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answers, :company_id, :room_id

  belongs_to :company
  belongs_to :room
  has_many :answers
end
