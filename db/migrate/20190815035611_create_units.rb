class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units, force: true do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
