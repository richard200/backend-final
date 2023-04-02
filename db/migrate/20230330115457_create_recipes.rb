class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.string :instructions, null: false
      t.string :ingredients, null: false
      t.integer :prep_time,  null: false
      t.belongs_to :user, null:false, foreign_key: true
      t.belongs_to :category, null:false, foreign_key: true

      t.timestamps
    end
  end
end
