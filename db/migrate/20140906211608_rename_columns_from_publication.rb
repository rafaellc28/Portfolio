class RenameColumnsFromPublication < ActiveRecord::Migration
  def change
    
    rename_column :publications, :published_at, :published
    
  end
end
