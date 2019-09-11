class DiariesController < ApplicationController

    before_action :set_diary, only: [:show, :edit, :update, :destroy, :diary_entries]

    def index
    end

    def show
    end


    def diary_entries
        
        
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

    def set_diary
        @diary = Diary.find(params[:id])
    end

    def diary_params
        params.require(:diary).permit(:shipname, :password, :person1, :person2, :user_id)
    end

end
