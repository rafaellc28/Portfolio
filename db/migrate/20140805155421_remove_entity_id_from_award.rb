class RemoveEntityIdFromAward < ActiveRecord::Migration
  def change
    remove_column :awards, :entity_id, :integer
  end
end
