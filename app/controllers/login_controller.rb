class LoginController < ApplicationController

    def create
        user = User.find_by(name: params[:name])
        # byebug
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
        # byebug    
            redirect_to user_path(session[:user_id])
        else
            flash[:errors] = ["Your Ship Could Not Be Found. Try another Port"]
            redirect_to home_static_path
        end

    end

    def destroy     
        session[:user_id] = nil
        redirect_to home_static_path
    end

end