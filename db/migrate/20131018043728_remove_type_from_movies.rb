class RemoveTypeFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :type, :string
  end
end
