class AddBrandToTyres < ActiveRecord::Migration[5.2]
  def change
    add_reference :tyres, :brand, foreign_key: true
  end
end
