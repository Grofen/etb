class AddTyreToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :tyre, foreign_key: true
  end
end
