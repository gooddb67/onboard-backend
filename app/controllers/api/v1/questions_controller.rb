class Api::V1::QuestionsController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @room = Room.find(params[:room_id])
    @questions = Question.where(room_id: @room.id, company_id: @company.id)
    render json: @questions
  end

  def create
    @company = Company.find(params[:company_id])
    @room = Room.find(params[:room_id])
    @question = Question.create(question: params[:question], room_id: @room.id, company_id: @company.id)
    if @question.save
      render json: @question
    else
      render json: {errors: @question.errors.full_messages}
    end
  end

end
