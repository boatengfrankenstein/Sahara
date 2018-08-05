class AddImageUrlToClassifieds < ActiveRecord::Migration[5.1]
  def change
    add_column :classifieds, :image_url, :string
  end
end
