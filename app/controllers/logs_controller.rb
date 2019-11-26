class LogsController < ApplicationController
  def index
    @farm = Farm.find(params[:farm_id])
    @plot = Plot.find(params[:plot_id])
    @logs = @plot.logs.all
  end

  def new
    @farm = Farm.find(params[:farm_id])
    @plot = Plot.find(params[:plot_id])
    @log = Log.new
  end

  def create
    @farm = Farm.find(params[:log][:farm_id])
    @plot = Plot.find(params[:log][:plot_id])
    @log = @plot.logs.create(params.require(:log).permit(:entry, :plot_id, :farm_id))

    redirect_to farm_plots_path(farm_id: @farm.id)
  end
end
