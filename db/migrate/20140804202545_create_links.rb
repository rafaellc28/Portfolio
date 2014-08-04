class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :entity_id, index: true
      t.references :parent_id, index: true
      t.string :text, limit: 100
      t.string :link, limit: 500

      t.timestamps
    end
  end
end
