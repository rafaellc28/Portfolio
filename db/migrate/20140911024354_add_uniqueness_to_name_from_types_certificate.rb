class AddUniquenessToNameFromTypesCertificate < ActiveRecord::Migration
  def change
    
    add_index :types_certificates, :name, unique: true
    
  end
end
