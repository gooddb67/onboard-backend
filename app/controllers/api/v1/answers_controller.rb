class Api::V1::AnswersController < ApplicationController

  def create
    @answer = Answer.create(answer: params[:answer], user_id: params[:user_id], question_id: params[:question_id])

    if @answer.save
      render json: @answer
    else
      render json: {errors: @answer.errors.full_messages}
    end
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.vote += 1
    if @answer.save
      render json: @answer
    else
      render json: {errors: @answer.errors.full_messages}
    end
  end
  
end
