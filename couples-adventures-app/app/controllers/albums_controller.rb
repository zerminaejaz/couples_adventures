class AlbumsController < ApplicationController

    before_action :set_album, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
        @picture = Picture.new
    end


    def new
        @album = Album.new
    end

    def create
        @album = Album.create(album_params)
        redirect_to @album
    end

    def edit
        
    end
    
    def update
        @album.update(album_params)
        redirect_to @album
    end

    def destroy
        @album.destroy
        redirect_to albums_path
    end

    private

    def set_album
        @album = Album.find(params[:id])
    end

    def album_params
        params.require(:album).permit(:name, :user_id)
    end

end
