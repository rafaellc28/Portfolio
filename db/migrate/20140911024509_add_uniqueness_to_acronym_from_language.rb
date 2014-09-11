class AddUniquenessToAcronymFromLanguage < ActiveRecord::Migration
  def change
    
    add_index :languages, :acronym, unique: true
    
  end
end
