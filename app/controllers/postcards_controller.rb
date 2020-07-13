class PostcardsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @postcards = Postcard.all
        render json: @postcards
    end
    
    def show 
        @postcard = Postcard.find(params[:id])
        render json: @postcard
    end

    def create
        @postcard = Postcard.create(postcard_params)
        render json: @postcard
    end

    def update
        @postcard = Postcard.find(params[:id])
        @postcard.update(postcard_params)
        render json: @postcard
    end

    def destroy
        @postcard = Postcard.find(params[:id])
        @postcard.destroy
        render json: { status: 'SUCCESS', message: 'deleted the postcard', data: @postcard }
    end

    private 

    def postcard_params
        params.permit(:message, :photo, :user_id)
    end
end
