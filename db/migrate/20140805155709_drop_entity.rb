class DropEntity < ActiveRecord::Migration
  def change
    
    drop_table :entities
    drop_table :tags_entities
    
  end
end
