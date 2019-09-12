class PicturesController < ApplicationController
    before_action :set_picture, only: [:show, :destroy]

    
    # def index
    # end

    def show
    end

    def new
        @picture = Picture.new
    end

    def create
        @picture = Picture.create(picture_params)
        # render new_entry_path need to do cookies to edit a return to previous page
        redirect_to album_path(@picture.album.id)
    end

    def new_entry_picture
        @picture = Picture.new
    end

    def destroy
        @picture.destroy
        redirect_to album_path(@picture.album)
    end

    private

    def set_picture
        @picture = Picture.find(params[:id])
    end

    def picture_params
        params.require(:picture).permit(:date, :url, :album_id)
    end

end
