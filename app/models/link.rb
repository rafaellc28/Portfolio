class Link < ActiveRecord::Base
  belongs_to :entity_id
  belongs_to :parent, polymorphic: true
end
