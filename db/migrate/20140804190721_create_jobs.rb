class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :entity, index: true
      t.references :company, index: true
      t.string :title, limit: 50
      t.text :description

      t.timestamps
    end
  end
end
