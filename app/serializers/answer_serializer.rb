class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :answer, :vote, :user_id, :question_id

  belongs_to :question
  belongs_to :user
end
