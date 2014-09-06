class AddActiveToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :active, :boolean, :default => false
  end
end
