class AddConversationtoClassifieds < ActiveRecord::Migration[5.1]
  def change
    add_column :conversations, :classified_id, :integer
    add_foreign_key :conversations, :classifieds
  end
end
