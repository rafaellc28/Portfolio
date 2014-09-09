class RenameAcademicPeriodToAcademicTerm < ActiveRecord::Migration
  def self.up
    rename_table :academic_periods, :academic_terms
  end
  
  def self.down
    rename_table :academic_terms, :academic_periods
  end
end
