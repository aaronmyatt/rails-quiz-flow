class CategoryAdminController < ApplicationController
  def index
      @category_admins = CategoryAdmin.all
  end
  def show
    show_category_admins = CategoryAdmin.find(params[:id])
    redirect_to category_admin_index_path

  end
  def new
    new_category_admins = CategoryAdmin.new
  end

  def edit
    @edit_category_admins = CategoryAdmin.find(params[:id])
  end

  def create
    create_category_admins = CategoryAdmin.create(name: params["name"])

    if create_category_admins.save
      redirect_to create_category_admins
    else
      render 'new'
    end
  end
  
  def update
    update_category_admins = CategoryAdmin.find(params[:id])
   
    if update_category_admins.update(category_params)
      redirect_to category_admin_index_path
    else
      render 'edit'
    end
  end
  def destroy 
    delete_category_admins = CategoryAdmin.find(params[:id])
    delete_category_admins.destroy
    redirect_to category_admin_index_path
  end

end

private
  def category_params
    params.require(:category_admin).permit(:name)
  end
