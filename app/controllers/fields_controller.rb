class FieldsController < ApplicationController
    def index
        @field = Field.find([:farm_id])
    end

    def new
        @farm = Farm.find(params[:farm_id])
        @field = Field.new
    end

    def create 
        @farm = Farm.find(params[:farm_id])
        @field = @farm.fields.create(params.require(:field).permit(:name, :crop, :farm_id))
        
        redirect_to farms_path
    end

    def edit
        @farm = Farm.find(params[:farm_id])
    end

    def update
        @farm = Farm.find(params[:farm_id])
        @field = @farm.fields.update(params.require(:field).permit(:name, :crop, :farm_id))

        redirect_to farms_path
    end

    def destroy
        @farm = Farm.find(params[:farm_id])
        @field = @farm.fields(params.require(:field).permit(:name, :crop, :farm_id)).destroy


        redirect_to farms_path
    end

    
end
