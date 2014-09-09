class RenameColumnsFromCertificate < ActiveRecord::Migration
  def change
    
    rename_column :certificates, :issued_at, :issued
    rename_column :certificates, :expire_at, :expire
    
  end
end
