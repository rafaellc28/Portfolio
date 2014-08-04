class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :entity_id, index: true
      t.references :parent, index: true, polymorphic: true
      t.string :name, limit: 100
      t.string :path, limit: 500

      t.timestamps
    end
  end
end
