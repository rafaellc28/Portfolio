class AddStartedAtAndDoneAtToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :started_at, :date
    add_column :jobs, :done_at, :date
  end
end
