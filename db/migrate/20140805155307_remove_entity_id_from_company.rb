class RemoveEntityIdFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :entity_id, :integer
  end
end
