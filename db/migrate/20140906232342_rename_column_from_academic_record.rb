class RenameColumnFromAcademicRecord < ActiveRecord::Migration
  def change
    
    rename_column :academic_records, :academic_period_id, :academic_term_id
    
  end
end
