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
        if @album.valid?
            redirect_to @album
        else
            flash[:errors] = @album.errors.full_messages
            redirect_to new_album_path
        end
    end

    def edit
        
    end
    
    def update
        @album.update(album_params)
        if @album.valid?
            redirect_to @album
        else
            flash[:errors] = @album.errors.full_messages
            redirect_to edit_album_path(@album)
        end
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
