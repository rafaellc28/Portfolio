class EducationsController < ApplicationController
  
  def index
    @education = Education.find(1)
    
    @education.tag_list.add("Computer Science")   # add a single tag. alias for <<
    @education.tag_list.add("computer science")   # add a single tag. alias for <<
    
    render text: @education.tags.map{|tag| tag.name}
    
  end
  
end
