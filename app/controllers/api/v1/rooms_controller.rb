class Api::V1::RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
    if @room
      render json: @room
    else
      render json: {errors: @room.errors.full_messages}
    end
  end

  def index
    @rooms = Room.all
    render json: @rooms
  end

  def create
    @room = Room.create(name: params[:name], avatar: params[:avatar])

    @user = User.find(params[:user_id])
    UserRoom.create(user_id: @user.id, room_id: @room.id)

    if @room.save
      render json: @room
    else
      render json: {errors: @room.errors.full_messages}
    end
  end

  def update
    @userRoom = UserRoom.create(user_id: params[:user_id], room_id: params[:room_id])

    if @userRoom.save
      render json: {message: "Joined"}
    else
      render json: {errors: "Did not join"}
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @user = User.find(params[:user_id])
    @userRoom = UserRoom.find_by(user_id: @user.id, room_id: @room.id)

    if UserRoom.destroy(@userRoom.id)
      render json: {message: "Destroyed"}
    else
      render json: {errors: "Did not work"}
    end
  end

end
