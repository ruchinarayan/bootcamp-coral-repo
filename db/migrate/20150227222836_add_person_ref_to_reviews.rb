class AddPersonRefToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :person, index: true
    add_foreign_key :reviews, :people
  end
end
