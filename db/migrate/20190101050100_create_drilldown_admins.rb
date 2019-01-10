class CreateDrilldownAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :drilldown_admins do |t|
      t.string :category_name
      t.string :drilldown_name

      t.timestamps
    end
  end
end
