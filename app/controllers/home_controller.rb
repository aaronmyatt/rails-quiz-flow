class HomeController < ApplicationController

  def index
  end

  def form
    session[:email]=params[:email]
    @email = User.new(email: params["email"])
    @email.save
    redirect_to '/category/index'
  end

end