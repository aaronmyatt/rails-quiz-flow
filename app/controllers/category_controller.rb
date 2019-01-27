class CategoryController < ApplicationController
  def index

    categories = CategoryAdmin.all
    
    @columns = categories
  end

  def form
    category_names = params[:category]
    category_names.each do |category|
      name = Category.create(name: category, user_id: User.last.id) 
    end
    redirect_to drilldown_path
  end
end
