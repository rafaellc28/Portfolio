class AddUniquenessToNameFromProject < ActiveRecord::Migration
  def change
    
    add_index :projects, :name, unique: true
    
  end
end
