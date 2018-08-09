class RemoveImageUrlFromClassifieds < ActiveRecord::Migration[5.1]
  def change
    remove_column :classifieds, :image_url
  end
end
