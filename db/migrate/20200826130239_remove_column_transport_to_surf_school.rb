class RemoveColumnTransportToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    remove_column :surf_schools, :transport
  end
end
