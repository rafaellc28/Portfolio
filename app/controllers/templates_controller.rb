class TemplatesController < ApplicationController
  

  def index
    
    #render text: @tags.map{|tag| [tag.name, tag.taggings_count]}
  end
  
  #def tag_cloud
  #  @tags = Certificate.tag_counts_on(:tags)
  #end
  
  def template
    render :template => 'templates/' + params[:path], :layout => nil
  end
  
end
