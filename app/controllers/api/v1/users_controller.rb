class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    if @user
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def create

  end

  def update

  end
end
