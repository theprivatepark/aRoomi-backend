class ListingsController < ApplicationController
    def index 
        @listings = Listing.all
        render :json => @listings :include => {:listing_pictures}
    end

    def show
        @listing = Listing.find(params[:id])
        if @listing
            render :json => @listing :include => {:listing_pictures}
        else
            render json: {
            status: 500,
            errors: ['listing not found']
            }
        end
    end
        
    def create
        @listing = Listing.new(price: params[:price], description: params[:description], address: params[:address], college: params[:college_id])
        if @listing.save
            render json: @listing :include => {:listing_pictures}
        end
    end

end

