class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.text :address
      t.string :country
      t.string :region
      t.string :continent
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
