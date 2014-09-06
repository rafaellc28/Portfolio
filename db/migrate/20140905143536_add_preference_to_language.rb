class AddPreferenceToLanguage < ActiveRecord::Migration
  def change
    add_column :languages, :preference, :integer
  end
end
