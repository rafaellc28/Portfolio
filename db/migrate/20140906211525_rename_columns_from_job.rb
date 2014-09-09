class RenameColumnsFromJob < ActiveRecord::Migration
  def change
    
    rename_column :jobs, :started_at, :start
    rename_column :jobs, :done_at, :end
    
  end
end
