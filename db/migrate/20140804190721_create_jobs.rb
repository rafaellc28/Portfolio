class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :entity_id, index: true
      t.references :company_id, index: true
      t.string :title, limit: 50
      t.text :description

      t.timestamps
    end
  end
end
