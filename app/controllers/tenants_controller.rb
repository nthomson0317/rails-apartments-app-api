class TenantsController < ApplicationController
    

    def index
        @tenants = Tenant.all
        render json: @tenants
    end

    def show
        @tenant = Tenant.find_by(id: params[:id])
        render json: @tenant
    end

    def update
        @tenant = Tenant.find_by(id: params[:id])
        @tenant.update(tenant_params)
        render json: @tenant
    end

    def create
        @tenant = Tenant.new(tenant_params)
       if @tenant && @tenant.valid?
        render json: @tenant
       else 
        render json: { error: @tenant.errors.messages }
       end
    end

    def destroy
        @tenant = Tenant.find_by(id: params[:id])
        @tenant.destroy
        render json: @tenant
    end



    private
    
    def tenant_params
        params.permit(:name, :age)
    end
end
