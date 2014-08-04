class Attachment < ActiveRecord::Base
  belongs_to :entity
  belongs_to :attachment_ref, polymorphic: true
end
