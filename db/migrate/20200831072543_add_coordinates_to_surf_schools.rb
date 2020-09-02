class AddCoordinatesToSurfSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :surf_schools, :latitude, :float
    add_column :surf_schools, :longitude, :float
  end
end
