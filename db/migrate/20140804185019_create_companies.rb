class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.references :entity_id, index: true
      t.string :name, limit: 100
      t.text :description

      t.timestamps
    end
  end
end
