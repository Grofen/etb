class CreateTyres < ActiveRecord::Migration[5.2]
  def change
    create_table :tyres do |t|
      t.string :name
      t.integer :width
      t.integer :ratio
      t.integer :rim
      t.string :season
      t.float :price

      t.timestamps
    end
  end
end
