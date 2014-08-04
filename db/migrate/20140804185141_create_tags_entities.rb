class CreateTagsEntities < ActiveRecord::Migration
  def change
    create_table :tags_entities do |t|
      t.references :tag_id, index: true
      t.references :entity_id, index: true

      t.timestamps
    end
  end
end
