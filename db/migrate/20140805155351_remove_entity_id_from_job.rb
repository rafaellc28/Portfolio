class RemoveEntityIdFromJob < ActiveRecord::Migration
  def change
    remove_column :jobs, :entity_id, :integer
  end
end
