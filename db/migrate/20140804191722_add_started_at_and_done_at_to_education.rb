class AddStartedAtAndDoneAtToEducation < ActiveRecord::Migration
  def change
    add_column :educations, :started_at, :date
    add_column :educations, :done_at, :date
  end
end
