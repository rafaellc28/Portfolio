class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name, limit: 5
      t.text :description

      t.timestamps
    end
  end
end
