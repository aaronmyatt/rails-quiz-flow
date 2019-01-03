class CreateQuestionAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :question_admins do |t|
      t.string :category_name , default: "Related Category"
      t.string :drilldown_name
      t.text :question

      t.timestamps
    end
  end
end
