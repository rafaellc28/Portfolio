class Admin::LinksController < Admin::ApplicationController
  
  validates_uniqueness_of :text, scope: [:link_ref_id, :link_ref_type]
  
end
