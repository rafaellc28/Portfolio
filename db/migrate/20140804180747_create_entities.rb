class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name, limit: 50

      t.timestamps
    end
  end
end
