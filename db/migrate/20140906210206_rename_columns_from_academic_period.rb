class RenameColumnsFromAcademicPeriod < ActiveRecord::Migration
  def change
    
    rename_column :academic_periods, :started_at, :start
    rename_column :academic_periods, :done_at, :end
    
  end
end
