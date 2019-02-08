class AddIsFreeToClassifieds < ActiveRecord::Migration[5.1]
  def change
    add_column :classifieds, :is_free, :boolean, default: false
  end
end
