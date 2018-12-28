class CategoryAdminController < ApplicationController
  def dashboard
      @category_admins = CategoryAdmin.all
  end
  def new
    @category_admins = CategoryAdmin.new
  end
  def edit    
    @category_admins = CategoryAdmin.find(params[:id])
  end
end

private
  def category_params
    params.require(:CategoryAdmin).permit(:name, :added_by)
  end
