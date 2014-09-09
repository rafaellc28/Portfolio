class RenameAcademicRecordToAcademicCourse < ActiveRecord::Migration
  def self.up
    rename_table :academic_records, :academic_courses
  end
  
  def self.down
    rename_table :academic_courses, :academic_records
  end
end
