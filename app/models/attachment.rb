class Attachment < ActiveRecord::Base
  
  before_validation { file.clear if @delete_file }
  
  belongs_to :attachment_ref, polymorphic: true
  has_attached_file :file
  
  validates_uniqueness_of :name, scope: [:attachment_ref_id, :attachment_ref_type]
  do_not_validate_attachment_file_type :file
  
  def delete_file
    @delete_file ||= false
  end
  
  def delete_file=(value)
    @delete_file = !value.to_i.zero?
  end
  
end
