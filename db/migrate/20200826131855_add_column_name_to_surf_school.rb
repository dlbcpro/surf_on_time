class AddColumnNameToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :surf_schools, :name, :string
  end
end
