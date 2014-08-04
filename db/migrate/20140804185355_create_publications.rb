class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.references :entity_id, index: true
      t.string :title, limit: 500
      t.text :description
      t.date :published_at

      t.timestamps
    end
  end
end
