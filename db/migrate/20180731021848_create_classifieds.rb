class CreateClassifieds < ActiveRecord::Migration[5.1]
  def change
    create_table :classifieds do |t|

      t.timestamps
    end
  end
end
