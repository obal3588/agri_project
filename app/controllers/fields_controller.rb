class FieldsController < ApplicationController
  def index
    @farm = Farm.find(params[:farm_id])
    @fields = @farm.fields.all
  end

  def new
    @farm = Farm.find(params[:farm_id])
    @field = @farm.fields.new
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
