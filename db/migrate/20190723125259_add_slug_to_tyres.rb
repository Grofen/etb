class AddSlugToTyres < ActiveRecord::Migration[5.2]
  def change
    add_column :tyres, :slug, :string
    add_index :tyres, :slug, unique: true
  end
end
