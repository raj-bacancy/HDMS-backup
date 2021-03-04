class StudentController < ApplicationController
    def index
        @user=User.find(session[:HostelId])
        @room_members=User.where(room_no:@user.room_no)
        @total_rooms=Room.all.size
        @total_capacity=Room.sum('capacity');
        @total_vacancy=Room.sum('vacancy');
    end
end
