class RemoveEntityIdFromAcademicPeriod < ActiveRecord::Migration
  def change
    remove_column :academic_periods, :entity_id, :integer
  end
end
