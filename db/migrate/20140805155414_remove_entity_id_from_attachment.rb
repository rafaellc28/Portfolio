class RemoveEntityIdFromAttachment < ActiveRecord::Migration
  def change
    remove_column :attachments, :entity_id, :integer
  end
end
