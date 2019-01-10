class CreateCategoryAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :category_admins do |t|
      t.string :name
      t.string :added_by

      t.timestamps
    end
  end
end
