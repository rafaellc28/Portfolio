class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :entity_id, index: true
      t.references :type_certificate_id, index: true
      t.string :title, limit: 100
      t.text :description
      t.date :issued_at
      t.date :expire_at

      t.timestamps
    end
  end
end
