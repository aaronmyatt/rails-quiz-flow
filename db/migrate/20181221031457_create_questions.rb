class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :name
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
