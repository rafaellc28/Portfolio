class Language < ActiveRecord::Base
  
  has_one :labels
  
  # asserts that name is present
  validates :name, presence: true
  
  # asserts that acronym is present and unique
  validates :acronym, presence: true, uniqueness: true
  
end
