class CategoryController < ApplicationController
  def index

    categories = CategoryAdmin.take(16)
    split = categories.each_slice(4).to_a

    @columns1 = split.fetch(0)
    @columns2 = split.fetch(1)
    @columns3 = split.fetch(2)
    @columns4 = split.fetch(3)
    
  end

  def form
    category_names = params.keys
    category_names.pop(2)
    category_names.delete_if {|x| x>= "utf8"}
    category_names.each do |category|
      name = Category.create(name: category, user_id: session[:user]) 
    end
    redirect_to '/drilldown/index'
  end
end
