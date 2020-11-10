class UsersController < ApplicationController
    def index 
        @users = User.all
        if @users
            render :json => @users
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
        end
    end

    def show
        @user = User.find(params[:id])
        if @user
            render :json => @user
        else
            render json: {
              status: 500,
              errors: ['user not found']
            }
        end
    end

    def create
        @user = User.new(first_name: params[:first_name], last_name: params[:last_name], username: params[:username], password: params[:password])
        if @user.save
            login!
            render json: @user
        end
    end



end
