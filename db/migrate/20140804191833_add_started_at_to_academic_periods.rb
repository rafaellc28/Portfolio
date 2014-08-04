class AddStartedAtToAcademicPeriods < ActiveRecord::Migration
  def change
    add_column :academic_periods, :started_at, :date
  end
end
