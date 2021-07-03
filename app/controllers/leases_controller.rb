class LeasesController < ApplicationController
    

    def index
        @leases = Lease.all
        render json: @leases

    end

    def create
        @lease = Lease.creat(lease_params)
        render json: @lease
    end

    def update
        @lease = Lease.find_by(id: params[:id])
        @lease.update(lease_params)
        render json: @lease
    end

    def destroy
        @lease = Lease.find_by(id: params[:id])
        @lease.destroy
        render json: @lease
    end
    


    private
    def lease_params
        params.permit(:rent, :tenant, :apartment)
    end
end
