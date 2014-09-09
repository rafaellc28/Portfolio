class RenameColumnFromAward < ActiveRecord::Migration
  def change
    
    rename_column :awards, :issued_at, :issued
    
  end
end
