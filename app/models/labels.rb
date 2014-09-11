class Labels < ActiveRecord::Base
  belongs_to :language, :inverse_of => :labels
  
  validates :language_id, :presence => true
  
  # asserts that content is present
  validates :content, presence: true
end
