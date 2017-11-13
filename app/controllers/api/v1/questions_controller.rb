class Api::V1::QuestionsController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @questions = @company.questions
    render json: @questions
  end

  def create
  end

  def update

  end
end
