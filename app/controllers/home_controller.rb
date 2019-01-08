class HomeController < ApplicationController

  def index
  end

  def form
    user = User.new(email: params["email"])
    user.save
    session[:user]=user.id
    redirect_to category_path
  end

end
