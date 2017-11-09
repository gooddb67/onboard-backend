class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
    render json: @questions
  end

  def create

  end

  def update

  end
end
