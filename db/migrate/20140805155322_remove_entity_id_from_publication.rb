class RemoveEntityIdFromPublication < ActiveRecord::Migration
  def change
    remove_column :publications, :entity_id, :integer
  end
end
