class AddCategoryIdToMovie < ActiveRecord::Migration[6.1]
  def change
    add_reference :movies, :category, null: false, foreign_key: true
  end
end
