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
        if @entry.valid?
            redirect_to @entry
        else
            flash[:errors] = @entry.errors.full_messages
            redirect_to new_entry_path
        end
    end

    def edit
    end
    
    def update
        @entry.update(entry_params)
        if @entry.valid?
            redirect_to @entry
        else
            flash[:errors] = @entry.errors.full_messages
            redirect_to new_entry_path
        end
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
