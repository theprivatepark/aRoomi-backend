class UsersController < ApplicationController
    def index 
        @users = User.all
        render :json => @users
    end

    def create
        @user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password[:password])
        if @user.save
            render json: @user
        end
    end

end
