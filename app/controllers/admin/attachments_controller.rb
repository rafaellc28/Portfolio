class Admin::AttachmentsController < Admin::ApplicationController
  
  validates_uniqueness_of :name, scope: [:attachment_ref_id, :attachment_ref_type]
  
end
