class SetDefaultAddedBy < ActiveRecord::Migration[5.2]
  def change
    change_column :category_admins, :added_by, :string, default: "Undefined"
  end
end
