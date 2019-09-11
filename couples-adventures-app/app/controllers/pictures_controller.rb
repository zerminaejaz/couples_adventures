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
        redirect_to album_path(@picture.album)
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
