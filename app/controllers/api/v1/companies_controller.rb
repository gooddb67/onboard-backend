class Api::V1::CompaniesController < ApplicationController

  def index
    @room = Room.find(params[:room_id])
    @companies = @room.companies
    render json: @companies
  end

  def create
    @room = Room.find(params[:room_id])
    @company = Company.create(name: params[:name], url: params[:url], avatar: params[:avatar], description: params[:description])
    @company_room = CompanyRoom.create(room_id: @room.id, company_id: @company.id)
    if @company.save && @company_room.save
      render json: @company
    else
      render json: {errors: @company.errors.full_messages}
    end
  end

  def update
  end


end
