class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :title
      t.string :commentary

      t.timestamps null: false
    end
  end
end
