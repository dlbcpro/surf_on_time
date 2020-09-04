class AddImageUrlToSurfSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :surf_schools, :image_url, :string
  end
end
