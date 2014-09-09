class RenameColumnsFromEducation < ActiveRecord::Migration
  def change
    
    rename_column :educations, :started_at, :start
    rename_column :educations, :done_at, :end
    
  end
end
