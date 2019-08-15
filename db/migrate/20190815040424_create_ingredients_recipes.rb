class CreateIngredientsRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_recipes, force: true do |t|
      t.references :recipe, index: true, null: false, foreign_key: true
      t.references :ingredient, index: true, null: false, foreign_key: true
      t.references :unit, foreign_key: true
      t.integer :amount
      t.index [:recipe_id, :ingredient_id], unique: true
      t.timestamps
    end
  end
end
