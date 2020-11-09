class CollegesController < ApplicationController
    def index 
        @colleges = College.all
        render :json => @colleges
    end

    def show

        @college = User.find(params[:id])
        if @college
            render :json => @college
        else
            render json: {
            status: 500,
            errors: ['college not found']
            }
        end
    end
        

end
