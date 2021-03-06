class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :entity, index: true
      t.references :attachment_ref, polymorphic: true
      t.string :name, limit: 100
      t.string :path, limit: 500

      t.timestamps
    end
  end
end
