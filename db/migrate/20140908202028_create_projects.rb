class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, limit: 25
      t.text :description
      t.date :created
      t.date :updated
      t.string :version, limit: 15

      t.timestamps
    end
  end
end
