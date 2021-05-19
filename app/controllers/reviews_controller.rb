class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show 
        review = Review.all.find_by_id(params[:id])
        render json: review
    end

    def create
        reviews = Review.new(content: params[:content], shoe_id: params[:shoe_id])
        if !reviews.save
            render json: {error: "We can't do that", status:400}
        else
            render json: reviews
        end
    end

    def destroy
        review = Review.find_by(params[:id])
    end
end
