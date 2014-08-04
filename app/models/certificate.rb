class Certificate < ActiveRecord::Base
  
  belongs_to :entity_id
  belongs_to :types_certificate
  
end
