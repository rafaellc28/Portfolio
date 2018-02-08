class AddFileToAttachment < ActiveRecord::Migration[4.2]
  def self.up
    add_attachment :attachments, :file
  end

  def self.down
    remove_attachment :attachments, :file
  end
end
