class Award < ActiveRecord::Base
  belongs_to :entity_id
  belongs_to :parent_id
end
