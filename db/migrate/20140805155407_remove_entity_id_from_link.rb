class RemoveEntityIdFromLink < ActiveRecord::Migration
  def change
    remove_column :links, :entity_id, :integer
  end
end
