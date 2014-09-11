class AddUniquenessToTitleFromPublication < ActiveRecord::Migration
  def change
    
    add_index :publications, :title, unique: true
    
  end
end
