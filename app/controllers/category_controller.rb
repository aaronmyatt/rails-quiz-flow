class CategoryController < ApplicationController
  def index

    @columns1 = [1,2,3,4]
    @columns2 = [5,6,7,8]
    @columns3 = [9,10,11,12]
    @columns4 = [13,14,15,16]
    
  end

  def form
    session[:category]=params[:category]
    redirect_to '/drilldown/index'
  end
end
