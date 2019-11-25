class HomeController < ApplicationController
  def index
    @home = User.all
  end
end
