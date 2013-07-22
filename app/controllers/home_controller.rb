class HomeController < ApplicationController
  def index
  end
  def about
  end
  def show
    render home_path
  end
end
