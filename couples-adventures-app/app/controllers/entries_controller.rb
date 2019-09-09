class EntriesController < ApplicationController

    before_action :set_entry, only: [:show, :edit, :update, :destroy]
    
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

    def set_entry
        @entry = Entry.find(params[:id])
    end

    def entry_params
        params.require(:entry).permit(:date, :title, :description, :picture_id, :diary_id)
    end


end
