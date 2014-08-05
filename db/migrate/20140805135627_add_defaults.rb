class AddDefaults < ActiveRecord::Migration
  def change
    
    change_column :educations, :entity_id, :integer, :default => 1
    change_column :academics_periods, :entity_id, :integer, :default => 2
    change_column :companies, :entity_id, :integer, :default => 3
    change_column :publications, :entity_id, :integer, :default => 4
    change_column :certificates, :entity_id, :integer, :default => 5
    change_column :jobs, :entity_id, :integer, :default => 6
    
  end
end
