class AddPersonRefToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :review, index: true
    add_foreign_key :reviews, :reviews
  end
end
