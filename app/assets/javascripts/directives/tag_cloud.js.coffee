angular.module('portfolioApp').directive "tagCloud", (Sorting) ->
  ret =
    restrict: "A"
    link: (scope, element) ->
      
      elem = element[0]
      
      element.bind 'click', (event) ->
        # activate/deactivate the tag clicked
        if ($("##{elem.id}").prop('class')) == 'active'
          $("##{elem.id}").prop('class', '')
        else
          $("##{elem.id}").prop('class', 'active')
        
        # hide all entities
        $("tr[id^='publication_']").hide()
        $("tr[id^='certificate_']").hide()
        $("tr[id^='type_certificate_']").hide()
        $("tr[id^='education_']").hide()
        $("tr[id^='academic_period_']").hide()
        $("tr[id^='academic_record_']").hide()
        $("tr[id^='company_']").hide()
        $("tr[id^='job_']").hide()
        
        # get all the active tags
        tags = $("#tag_cloud").find(".active")
        
        # show all entities/records linked to active tags
        for tag in tags
   	      $("table[id='publications_list']").find("tr[data-tags*='#{tag.title}']").show()
   	      $("table[id='certificates_list']").find("tr[data-tags*='#{tag.title}']").show()
          $("table[id='types_certificates_list']").find("tr[data-tags*='#{tag.title}']").show()
   	      $("table[id='educations_list']").find("tr[data-tags*='#{tag.title}']").show()
          $("table[id='academic_periods_list']").find("tr[data-tags*='#{tag.title}']").show()
          $("table[id='academic_records_list']").find("tr[data-tags*='#{tag.title}']").show()
          $("table[id='companies_list']").find("tr[data-tags*='#{tag.title}']").show()
          $("table[id='jobs_list']").find("tr[data-tags*='#{tag.title}']").show()
        
        # if there is no active tags, then show all entities/records
        if tags.length == 0
          $("tr[id^='publication_']").show()
          $("tr[id^='certificate_']").show()
          $("tr[id^='type_certificate_']").show()
          $("tr[id^='education_']").show()
          $("tr[id^='academic_period_']").show()
          $("tr[id^='academic_record_']").show()
          $("tr[id^='company_']").show()
          $("tr[id^='job_']").show()
