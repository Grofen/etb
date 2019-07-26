class AddCategoryToEducation < ActiveRecord::Migration[5.2]
  def change
    add_reference :educations, :category, foreign_key: true
  end
end
