class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.references :language, index: true, :unique => true
      t.text :content

      t.timestamps
    end
  end
end
