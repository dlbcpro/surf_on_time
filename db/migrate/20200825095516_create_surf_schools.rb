class CreateSurfSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :surf_schools do |t|
      t.text :description
      t.text :address
      t.string :email
      t.string :phone_number
      t.string :opening_hours
      t.float :latitude
      t.float :longitude
      t.text :meeting_point
      t.string :teacher
      t.string :lesson_type
      t.string :transport
      t.integer :rental_price_tendancy
      t.integer :lesson_price_tendancy

      t.timestamps
    end
  end
end
