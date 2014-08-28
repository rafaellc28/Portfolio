class ChangeCourseSizeFromAcademicRecord < ActiveRecord::Migration
  def change
    change_column :academic_records, :course, :string, limit: 100
  end
end
