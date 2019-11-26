class PlotsController < ApplicationController
  def index
    @farm = Farm.find(params[:farm_id])
    @plots = @farm.plots.all
  end

  def new
    @farm = Farm.find(params[:farm_id])
    @plot = Plot.new
  end

  def create
    @farm = Farm.find(params[:plot][:farm_id])
    @plot = @farm.plots.create(params.require(:plot).permit(:name, :crop, :farm_id))

    redirect_to plots_path(farm_id: @farm.id)
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
    @plot = @farm.plots(params.require(:plot).permit(:name, :crop, :farm_id)).destroy

    redirect_to farms_path
  end
end
