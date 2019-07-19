class AddColumnsToTyre < ActiveRecord::Migration[5.2]
  def change
    add_column :tyres, :description, :text
    add_column :tyres, :model, :string
    add_column :tyres, :load, :integer
    add_column :tyres, :speed, :string
    add_column :tyres, :made_in, :string
    add_column :tyres, :year, :integer
  end
end
