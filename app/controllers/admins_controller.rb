class AdminsController < ApplicationController
  def show
    @users = User.all
  end

  def makeEmp
    @user = User.find(params[:format])
    @user.update(emp: true)
  end
end
