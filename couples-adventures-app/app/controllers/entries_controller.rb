class EntriesController < ApplicationController

    before_action :set_entry, only: [:show, :edit, :update, :destroy]
    
    def index
    end

    def show
    end

    def new
        @entry = Entry.new
    end

    def create
        @entry = Entry.create(entry_params)
        redirect_to @entry
    end

    def edit
    end
    
    def update
        @entry.update(entry_params)
        redirect_to @entry
    end

    def destroy
        @entry.destroy
        redirect_to diary_entries_path(@entry.diary.id)
    end


    private

    def set_entry
        @entry = Entry.find(params[:id])
    end

    def entry_params
        params.require(:entry).permit(:date, :title, :description, :picture_id, :diary_id)
    end


end
