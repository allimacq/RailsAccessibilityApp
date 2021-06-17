class ParksController < ApplicationController
    
    def new
        @park = Park.new
        @state = cookies[:state_id]
    end

    def create
        @park = Park.create(parks_params)
        if @park.save
            redirect_to park_path(@park)
        else
            @state = cookies[:state_id]
            render :new
        end
    end

    def show
        @park = Park.find_by_id(params[:id])
        if !params[:accessible].blank?
            @park_reviews = @park.accessible_reviews(params[:accessible])
                if @park_reviews.empty?
                    flash.now[:alert] = "Could not find any reviews matching your search criteria"
                end 
        else
            @park_reviews = @park.reviews
        end
    end

    def edit
        @park = Park.find(params[:id])
    end

    def update
        @park = Park.find(params[:id])
        @park.update(parks_params)
        redirect_to park_path(@park)
    end

    def destroy
        @park = Park.find(params[:id]).destroy
        redirect_to root_path, notice: "Successfully deleted."
    end


    private

    def parks_params
        params.require(:park).permit(:name, :state_id, :city_id, :user_id, :accessible, :rating, :park_reviews)
    end

end