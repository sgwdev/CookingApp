class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients, force: true do |t|
      t.string :name

      t.timestamps
    end
  end
end
