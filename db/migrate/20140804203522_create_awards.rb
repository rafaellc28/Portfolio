class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :entity_id, index: true
      t.references :parent_id, index: true
      t.string :title, limit: 200
      t.text :description
      t.date :issued_at

      t.timestamps
    end
  end
end
