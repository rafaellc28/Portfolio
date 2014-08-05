class RemoveEntityIdFromEducation < ActiveRecord::Migration
  def change
    remove_column :educations, :entity_id, :integer
  end
end
