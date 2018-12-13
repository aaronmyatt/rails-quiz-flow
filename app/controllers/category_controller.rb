class CategoryController < ApplicationController
  def index
  end

  def form
    session[:category]=params[:category]
    redirect_to '/drilldown/index'
  end
end
