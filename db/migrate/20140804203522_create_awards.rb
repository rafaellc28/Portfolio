class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :entity, index: true
      t.references :award_ref, polymorphic: true
      t.string :title, limit: 200
      t.text :description
      t.date :issued_at

      t.timestamps
    end
  end
end
