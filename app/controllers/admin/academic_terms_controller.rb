class Admin::AcademicTermsController < Admin::ApplicationController
  
  def index
    
=begin
    # find the Education record that this academic_term will belong
    @education = Education.find_by_title("title1")
    
    #create AcademicTerm record
    @academic_term = @education.academic_terms.create(:name => "name1", :start => "2014-03-01-01", :end => "2014-07-01-01")
    
    # Stop if there was some error in creating this AcademicTerm record
    if @academic_term.errors.any?
      
      @str = error_message(@academic_term, "AcademicTerm")
      render text: @str
      
      return
      
    end
    
    # find the AcademicTerm record created
    @academic_term = @education.academic_terms.find_by_name("name1")
    
    # Add an attachment to this AcademicTerm record
    @attachment = @academic_term.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end

    @attachment.file = File.open("public/assets/file")
    @attachment.save
    
    # Add a link to this AcademicTerm record
    @link = @academic_term.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this AcademicTerm record
    # Note this award will be also inserted to the Education for which this AcademicTerm belongs
    @award = @academic_term.awards.create(:title => "Award AcademicTerm 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this AcademicTerm record
    # Note this tag will be also inserted to the Education for which this AcademicTerm belongs
    @academic_term.tag_list.add("AcademicTerm Tag 1")
    
    # Remove a tag from this AcademicTerm record
    # Note this tag will be not removed from the Education for which this AcademicTerm belongs
    # @academic_term.tag_list.remove("AcademicTerm Tag 1")
    
    # It is necessary to save the tags just added
    # Also, add the tags and awards to the parent of type Education
    @academic_term.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @academic_term.reload
    
    @str = "AcademicTerm:<br><br>Name: " + @academic_term.name + 
      "<br>Start: " + @academic_term.start.to_s +
      "<br>End: " + @academic_term.end.to_s + "<br><br><br>"
    
    @str += "Attachments: " + @academic_term.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @academic_term.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @academic_term.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @academic_term.tags.map{|e| e.name}.to_s + "<br><br>"
    @str += "<br>"
    
    render text: @str
=end
  end
  
private
  
  def error_message(resource, name)
    
    @message = "It was not possible to create the " + name + " record.<br><br>"
    
    if resource.errors.any?
      
      resource.errors.full_messages.each do |msg|
        
        @message += msg + "<br>"
        
      end
      
    end
    
    @message
    
  end
  
end
