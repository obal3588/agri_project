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

    redirect_to "/farms/#{params[:farm_id]}/plots/#{params[:plot_id]}/logs"
  end

  def edit
    @farm = Farm.find(params[:farm_id])
    @plot = Plot.find(params[:plot_id])
    @log = @plot.logs.find(params[:id])
  end

  def update
    @farm = Farm.find(params[:farm_id])
    @plot = @farm.plots.find(params[:plot_id])
    @log = @plot.logs.find(params[:id]).update(params.require(:log).permit(:entry))

    redirect_to "/farms/#{params[:farm_id]}/plots/#{params[:plot_id]}/logs"
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @plot = @farm.plots.find(params[:plot_id])
    @log = @plot.logs.find(params[:id]).destroy

    redirect_to "/farms/#{params[:farm_id]}/plots/#{params[:plot_id]}/logs"
  end
end
