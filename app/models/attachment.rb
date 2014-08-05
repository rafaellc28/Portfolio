class Attachment < ActiveRecord::Base
  
  belongs_to :attachment_ref, polymorphic: true
  
end
