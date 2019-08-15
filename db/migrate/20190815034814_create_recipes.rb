class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes, force: true do |t|
      t.string :title
      t.integer :total_time
      t.integer :preparation_time
      t.integer :cooking_time
      t.integer :serving
      t.text :description
      t.text :comment

      t.timestamps
    end
  end
end
