class ListingPicturesController < ApplicationController
    def index 
        @listing_pictures = ListingPicture.all
        render :json => @listing_pictures
    end

    def show
        @listing_picture = ListingPicture.find(params[:id])
        if @listing_picture
            render :json => @listing_picture
        else
            render json: {
            status: 500,
            errors: ['picture not found']
            }
        end
    end
        
    def create
        @listing_picture = ListingPicture.new(image_url: params[image_url], listing_id: params[:listing_pictures])
        if @listing_picture.save
            render json: @listing_picture
        end
    end

end
