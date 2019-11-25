class FarmsController < ApplicationController
    def  index 
        @farms = Farm.all
    end
    def new
        @farm = Farm.new
    end
    def destroy
        Farm.find(params[:id]).destroy
        redirect_to farms_path
    end
end
