class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :entity, index: true
      t.references :link_ref, polymorphic: true
      t.string :text, limit: 100
      t.string :link, limit: 500

      t.timestamps
    end
  end
end
