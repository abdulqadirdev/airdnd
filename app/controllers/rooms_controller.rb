class RoomsController < ApplicationController
    before_action :set_room, only:[:edit, :show, :update]

    def index
    end

    def new
      @room = Room.new
    end

    def create
      @room = Room.new
      @room = current_user.rooms.create(room_params)
      @room.save
      redirect_to rooms_path
    end

    def show
    
    end

    def edit
    end

    def update
      @room.update(room_params)
      redirect_to @room
    end
      


    private

    def room_params
        params.require(:room).permit(:home_type, :room,:accommodate, :bed_room, :bath_room, :listing_home, :summary, :address , :is_tv, :is_kitchen, :is_air, :is_heating,:is_internet, :active, :price, :user_id, images: [] )
    end

    def set_room
        @room = Room.find(params[:id])
    end
    
end
