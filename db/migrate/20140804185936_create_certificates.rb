class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :entity, index: true
      t.references :types_certificate, index: true
      t.string :title, limit: 100
      t.text :description
      t.date :issued_at
      t.date :expire_at

      t.timestamps
    end
  end
end
