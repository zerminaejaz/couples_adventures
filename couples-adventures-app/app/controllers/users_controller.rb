class UsersController < ApplicationController
    
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def show
        
        unless @logged_in_user && @logged_in_user == @user
            flash[:errors] = ["Sorry your ship is not here"]
            redirect_to new_login_path
        end

    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id  
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def destroy
        @user.destroy
        session[:user_id] = nil
        redirect_to sorry_static_path  

    end

    private
    
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :password)
    end

end
