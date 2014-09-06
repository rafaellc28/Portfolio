class AddAcronymToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :acronym, :string, limit: 5
    change_column :languages, :name, :string, limit: 15
  end
end
