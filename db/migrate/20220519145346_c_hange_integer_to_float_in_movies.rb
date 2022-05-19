class CHangeIntegerToFloatInMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :rating, :integer
    add_column :movies, :rating, :float
  end
end
