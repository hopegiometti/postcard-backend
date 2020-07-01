class ResponsesController < ApplicationController
    def index
        @responses = Response.all
        render json: @responses
    end
    
    def show 
        @response = Response.find(params[:id])
        render json: @response
    end

    def create
        @response = Response.create(response_params)
        render json: @response
    end

    def update
        @response = Response.find(params[:id])
        @response.update(response_params)
        render json: @response
    end

    def destroy
        @response = Response.find(params[:id])
        @response.destroy
        render json: { status: 'SUCCESS', message: 'deleted the response', data: @response }
    end

    private 

    def response_params
        params.permit(:body, :user_id, :postcard_id)
    end
end
