class RenameColumnEmailToSurfSchool < ActiveRecord::Migration[6.0]
  def change
    rename_column :surf_schools, :email, :website
  end
end
