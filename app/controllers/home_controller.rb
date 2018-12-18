class HomeController < ApplicationController

  def index
  end

  def form
    session[:email]=params[:email]
    redirect_to '/category/index'
  end

end
