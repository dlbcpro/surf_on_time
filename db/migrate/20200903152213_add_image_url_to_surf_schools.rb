class AddImageUrlToSurfSchools < ActiveRecord::Migration[6.0]
  def change
    add_column :surfschools, :image_url, :string
  end
end
