class CreateTagsEntities < ActiveRecord::Migration
  def change
    create_table :tags_entities do |t|
      t.references :tag, index: true
      t.references :entity, index: true

      t.timestamps
    end
  end
end
