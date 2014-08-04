class CreateTypesCertificates < ActiveRecord::Migration
  def change
    create_table :types_certificates do |t|
      t.string :name, limit: 50
      t.text :description

      t.timestamps
    end
  end
end
