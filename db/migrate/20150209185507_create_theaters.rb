class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.string :theater_address
      t.string :theater_phone

      t.timestamps null: false
    end
  end
end
