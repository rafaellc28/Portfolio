class Award < ActiveRecord::Base
  belongs_to :entity
  belongs_to :award_ref, polymorphic: true
end
