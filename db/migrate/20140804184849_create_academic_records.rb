class CreateAcademicRecords < ActiveRecord::Migration
  def change
    create_table :academic_records do |t|
      t.references :academic_period, index: true
      t.string :course, limit: 50
      t.string :grade, limit: 5
      t.text :description

      t.timestamps
    end
  end
end
