class Link < ActiveRecord::Base
  
  belongs_to :link_ref, polymorphic: true
  
end
