class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps, force: true do |t|
      t.references :recipe, foreign_key: true
      t.integer :number
      t.text :description

      t.timestamps
    end
  end
end
