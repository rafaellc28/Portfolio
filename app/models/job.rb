class Job < ActiveRecord::Base
  belongs_to :entity_id
  belongs_to :company_id
end
