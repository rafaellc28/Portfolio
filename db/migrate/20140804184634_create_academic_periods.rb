class CreateAcademicPeriods < ActiveRecord::Migration
  def change
    create_table :academic_periods do |t|
      t.references :entity_id, index: true
      t.references :education_id, index: true
      t.string :name, limit: 50
      t.date :done_at

      t.timestamps
    end
  end
end
