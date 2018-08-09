class AddImagesToClassifeds < ActiveRecord::Migration[5.1]
  def change
    add_column :classifieds, :images, :string, array: true, default: [] # add images column as array
  end
end
