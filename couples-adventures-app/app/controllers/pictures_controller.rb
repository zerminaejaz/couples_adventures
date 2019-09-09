class PicturesController < ApplicationController
    before_action :set_picture, only: [:update, :edit, :show, :destroy]

    
    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end
    
    def update
    end

    def destroy
    end

    private

    def set_picture
        @picture = Picture.find(params[:id])
    end

    def picture_params
        params.require(:picture).permit(:date, :url)
    end

end
