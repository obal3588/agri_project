class AdminsController < ApplicationController
  def index
    @users = User.all
  end

  def makeEmp
    @user = User.find(params[:format])
    if @user.emp
      @user.update(emp: false)
    else
      @user.update(emp: true)
    end
    redirect_to admins_path
  end

  def show
  end
end
