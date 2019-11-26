class PlotsController < ApplicationController
  def index
    @farm = Farm.find(params[:farm_id])
    @plots = @farm.plots.all
  end

  def new
    @farm = Farm.find(params[:farm_id])
    @plot = @farm.plots.new
  end

  def create
    @farm = Farm.find(params[:plot][:farm_id])
    @plot = @farm.plots.create(params.require(:plot).permit(:name, :crop, :farm_id))

    redirect_to farm_plots_path(farm_id: @farm.id)
  end

  def edit
    @farm = Farm.find(params[:farm_id])
  end

  def update
    @farm = Farm.find(params[:farm_id])
    @plot = @farm.plots.update(params.require(:plot).permit(:name, :crop, :farm_id))

    redirect_to farms_path
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @plot = @farm.plots.find(params[:id]).destroy

    redirect_to farms_path
  end
end
