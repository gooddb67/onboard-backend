class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def create
    @company = Company.create(name: params[:name], url: params[:url], avatar: params[:avatar], description: params[:description])

    if @company.save
      render json: @company
    else
      render json: {errors: @company.errors.full_messages}
    end
  end

  def update
  end


end
