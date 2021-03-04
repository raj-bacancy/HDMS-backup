class RoomManagementController < ApplicationController

    def index    
    end

    def show
        @users=User.where(room_no:params[:id])
    end
    
    def get_all_room
        @rooms=Room.all
    end

    def new
        @room = Room.new;
    end

    def create
        @room=Room.new(get_params)
    
        if @room.save
            render 'index'
        else
            render 'new'
        end
    end

    def get_params
        params.require(:room).permit(:room_no,:capacity,:vacancy)
    end
    
end
