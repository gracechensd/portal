class HomeController < ApplicationController
  def index
  end
  def about
  end
  def show
    render home_path
  end

  def dashboard
    @services = Service.all
  end

  def services
    @services = Service.all
  end
end
