class ApartmentsController < ApplicationController

    def index
        @apartment = Apartment.all
        render json: @apartment
    end

    def create
        @apartment = Apartment.create(apartment_params[:id])
        render json: @apartment
    end

    def show
        @apartment = Apartment.find(apartment_params[:id])
        render json: @apartment
    end

    def update
        @apartment = Apartment.find(apartment_params[:id])
        @apartment.update(number: params[:number])
        render json: @apartment
    end

    def destroy
        @apartment = Apartment.find(apartment_params[:id])
        @apartment.destroy
        render json: @apartment
    end


    private

    def apartment_params
        params.permit(:id)
    end
end
