class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :company_id, :answers

  belongs_to :company
  has_many :answers
end
