// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//


//= require jquery
//= require jquery_ujs
//= require ./lib/angular.min
//= require ./lib/angular-resource.min
//= require ./lib/angular-route.min
//= require ./lib/ui-bootstrap-tpls-0.9.0.min
//= require ./lib/normalize
//= require portfolioApp
//= require ./services/CertificatesService
//= require ./services/CompaniesService
//= require ./services/EducationsService
//= require ./services/LabelsService
//= require ./services/LanguagesService
//= require ./services/PublicationsService
//= require ./services/TagsService
//= require ./services/TypesCertificatesService
//= require ./controllers/SpaController
//= require ./controllers/TagsController
//= require ./controllers/LanguagesController
//= require_tree ./filters
//= require_tree ./directives
//= require_tree ./classes

// require ./tags
// require ./canvas
// require_tree ./docs
// require ./tooltips
// require turbolinks
// require angular
// require angular-resource
// require angular-route
// require angular-rails-templates
// require_tree ./templates

//$("tr[id^='certificate_']").on('click', function (){ 
//   alert('click');
//});

/*$(document).ready(function () {
	//$("[data-toggle='tooltip']").each(function() {
	//	$(this).qtip({ content: $(this).next('.tooltipContent:first') });
	//});
	
	//$(document).mouseup(function (e) {
	//    if ($('.popover').has(e.target).length === 0) {
	//        $('.popover').toggleClass('in').remove();
	//        return;
	//    }
	//});
	
	var canvas = $("#canvas");
	alert(canvas);
	if (canvas.getContext) {
		var ctx = canvas.getContext("2d");
		alert(ctx);
		// Draw triangle
		//ctx.fillStyle="#A2322E";
		
		//ctx.beginPath();
		// Draw a triangle location for each corner from x:y 100,110 -> 200,10 -> 300,110 (it will return to first point)
		//ctx.moveTo(100,110);
		//ctx.lineTo(200,10);
		//ctx.lineTo(300,110);
		//ctx.closePath();
		//ctx.fill();
		ctx.fillRect(1,1,5,5);
	} else {
		alert("Not canvas context");
	}
})*/

