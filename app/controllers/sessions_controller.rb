class SessionsController < ApplicationController

    def create
        if (params[:name] == nil) || (params[:name].length == 0)
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to secrets_path
        end
    end

    def destroy
        if session[:name] != nil
            session[:name] = nil
        end
    end
end
