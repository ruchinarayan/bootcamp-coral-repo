class AddStudioRefToMovies < ActiveRecord::Migration
  def change
    add_reference :movies, :studio, index: true
    add_foreign_key :movies, :studios
  end
end
