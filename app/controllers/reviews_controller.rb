class ReviewsController < ApplicationController

    def new
        @park = Park.find_by_id(params[:park_id])
        @review = Review.new(park_id: @park.id)
    end

    def create
        @review = Review.create(reviews_params)
        @park = Park.find_by_id(params[:park_id])
        if @review.save
            redirect_to park_review_path(@park, @review)
        else
            render partial: 'reviews/form'
        end
    end

    def show
        @review = Review.find_by_id(params[:id])
        @user = User.find_by_id(@review.user_id)
        @activity = Activity.find_by_id(@review.activity_id)
        @park = Park.find_by_id(params[:park_id])
    end

    def edit
        @park = Park.find(params[:park_id])
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @park = Park.find(params[:park_id])
        @review.update(reviews_params)
        redirect_to park_review_path(@park, @review)
    end

    def destroy
        @review = Review.find(params[:id]).destroy
        redirect_to root_path, notice: "Successfully deleted."
    end


    private

    def reviews_params
        params.require(:review).permit(:review, :park_id, :activity_id, :user_id, :accessible, :title, :rating)
    end
end