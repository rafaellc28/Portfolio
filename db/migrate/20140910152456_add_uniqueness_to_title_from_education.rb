class AddUniquenessToTitleFromEducation < ActiveRecord::Migration
  def change
    
    add_index :educations, :title, unique: true
    
  end
end
