class Admin::AcademicCoursesController < Admin::ApplicationController
  
  def index
    
=begin
    # find the Education record that this AcademicCourse will belong
    @education = Education.find_by_title("title1")
    
    # finde the AcademicTerm record that this AcademicCourse will belong
    @academic_term = @education.academic_terms.find_by_name("name1")
    
    #create AcademicCourse record
    @academic_course = @academic_term.academic_courses.create(:course => "course1", :grade => "A", :description => "description1")
    
    # Stop if there was some error in creating this AcademicCourse record
    if @academic_course.errors.any?
      
      @str = error_message(@academic_course, "AcademicCourse")
      render text: @str
      
      return
      
    end
    
    # find the AcademicTerm record created
    @academic_course = @academic_term.academic_courses.find_by_course("course1")
    
    # Add an attachment to this AcademicCourse record
    @attachment = @academic_course.attachments.create(:path => "assets/file", :name => "Attachment1")
    
    # Stop if there was some error in adding this attachment
    if @attachment.errors.any?
      
      @str = error_message(@attachment, "Attachment")
      render text: @str
      
      return
      
    end

    @attachment.file = File.open("public/assets/file")
    @attachment.save
        
    # Add a link to this AcademicCourse record
    @link = @academic_course.links.create(:link => "http://github.com", :text => "GitHub")
    
    # Stop if there was some error in adding this link
    if @link.errors.any?
      
      @str = error_message(@link, "Link")
      render text: @str
      
      return
      
    end
    
    # Add a award to this AcademicCourse record
    # Note this award will be also inserted to the AcademicTerm for which this AcademicCourse belongs
    @award = @academic_course.awards.create(:title => "Award AcademicCourse 1", :description => "Award Description 1", :issued => "2014-09-10")
    
    # Stop if there was some error in adding this award
    if @award.errors.any?
      
      @str = error_message(@award, "Award")
      render text: @str
      
      return
      
    end
    
    # Add a tag to this AcademicCourse record
    # Note this tag will be also inserted to the AcademicTerm for which this AcademicCourse belongs
    @academic_course.tag_list.add("AcademicCourse Tag 1")
    
    # Remove a tag from this AcademicCourse record
    # Note this tag will be not removed from the AcademicTerm for which this AcademicCourse belongs
    # @academic_term.tag_list.remove("AcademicCourse Tag 1")
    
    # It is necessary to save the tags just added
    @academic_course.save
    
    # It is necessary to do not show duplicated attachments, links and awards
    @academic_course.reload
    
    @str = "AcademicCourse:<br><br>Course: " + @academic_course.course + 
      "<br>Grade: " + @academic_course.grade +
      "<br>Description: " + @academic_course.description + "<br><br><br>"
    
    @str += "Attachments: " + @academic_course.attachments.map{|e| [e.name, e.path]}.to_s + "<br><br>"
    @str += "Links: " + @academic_course.links.map{|e| [e.text, e.link]}.to_s + "<br><br>"
    @str += "Awards: " + @academic_course.awards.map{|e| [e.title, e.description, e.issued]}.to_s + "<br><br>"
    @str += "Tags: " + @academic_course.tags.map{|e| e.name}.to_s + "<br><br>"
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
