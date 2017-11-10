class Api::V1::RoomsController < ApplicationController

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

end
