class AddPercentageToCategoryMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :category_movies, :percentage, :float
  end
end
