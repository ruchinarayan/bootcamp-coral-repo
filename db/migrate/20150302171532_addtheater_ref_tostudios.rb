class AddtheaterRefTostudios < ActiveRecord::Migration
   def change
    add_reference :studios, :theater, index: true
    add_foreign_key :studios, :theaters
  end
end
