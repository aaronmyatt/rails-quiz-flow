class SetCategoryDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :question_admins, :category_name, :string, default: "Related Category"
  end
end
