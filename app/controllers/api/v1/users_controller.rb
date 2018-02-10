class Api::V1::UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]

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
    @user = User.create(name: params[:name], password: params[:password], admin: params[:admin], avatar: params[:avatar], email: params[:email])

    @user.experiences.create(company: params[:company] , title: params[:title], start_date: params[:startdate], end_date: params[:enddate], current: params[:current])
    if @user.save
      payload = {user_id: @user.id}
      token = JWT.encode(payload, "flatiron")
      render json: {user:@user, jwt: token, id: @user.id }
    else
      render json: { error: "signup failed"}
    end
  end

end
