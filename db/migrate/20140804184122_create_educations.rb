class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :entity_id, index: true
      t.string :title, limit: 50
      t.string :institution, limit: 100
      t.text :description

      t.timestamps
    end
  end
end
