class AddImageUrlToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :image_url, :string
  end
end
