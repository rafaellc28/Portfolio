class EducationsController < ApplicationController
  
  def index
    #@education = Education.find(1)
    #render text: @education.tags.map{|tag| tag.tag}
      
      
   @tag = Tag.find(1)
   render text: @tag.educations.map{|education| education.title}
   
  end
  
end
