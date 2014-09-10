(function(){angular.module("portfolioApp").factory("Section",function(Sorting){var Section;return Section=function(){function Section(id,initOrder){this.id=id,this.initParentId=initOrder.getParentId(),this.orderController={},this.orderController[this.initParentId]=initOrder}return Section.open="open",Section.close="close",Section.prototype.getId=function(){return this.id},Section.prototype.setId=function(id){this.id=id},Section.prototype.getOrder=function(parentId){return this.orderController[parentId]},Section.prototype.addOrder=function(parentId,order){return this.orderController[parentId]=order},Section.prototype.validateOrder=function(parentId){return this.orderController[parentId]?void 0:(this.orderController[parentId]=jQuery.extend(!0,{},this.orderController[this.initParentId]),this.orderController[parentId].setParentId(parentId))},Section.drawOpen=function(ctx_param){return ctx_param.fillRect(3,9,11,3),ctx_param.fillRect(7,5,3,11)},Section.drawClose=function(ctx_param){return ctx_param.fillRect(3,9,10,3)},Section.popover_message=function(title,links,attachments,tags,awards,label){var attachment,award,date_fr,date_issued,link,ret_str,tag,_i,_j,_k,_l,_len,_len1,_len2,_len3,_ref,_ref1,_ref2,_ref3;if(ret_str="<center>"+title+"</center><br>",void 0!==awards&&awards.length>0)for(ret_str+=""+label.messages.awards+"<br>",_ref=Sorting.sort(awards,"title",!1,Sorting.string),_i=0,_len=_ref.length;_len>_i;_i++)award=_ref[_i],date_issued=new Date(award.issued),date_fr=date_issued.format(label.config.date_format_js),ret_str+=""+award.title+" - "+date_fr+"</a><br>";if(void 0!==attachments&&attachments.length>0)for(ret_str+=""+label.messages.attachments+"<br>",_ref1=Sorting.sort(attachments,"name",!1,Sorting.string),_j=0,_len1=_ref1.length;_len1>_j;_j++)attachment=_ref1[_j],ret_str+="<a href='"+attachment.path+"' target='attach_"+attachment.id+"'>"+attachment.name+"</a><br>";if(void 0!==links&&links.length>0)for(ret_str+=""+label.messages.links+"<br>",_ref2=Sorting.sort(links,"text",!1,Sorting.string),_k=0,_len2=_ref2.length;_len2>_k;_k++)link=_ref2[_k],ret_str+="<a href='"+link.link+"' target='link_"+link.id+"'>"+link.text+"</a><br>";if(void 0!==tags&&tags.length>0){for(ret_str+=""+label.messages.tags+"<br>",ret_str+="<ul class='nav nav-pills'>",_ref3=Sorting.sort(tags,"name",!1,Sorting.string),_l=0,_len3=_ref3.length;_len3>_l;_l++)tag=_ref3[_l],ret_str+="<li>",ret_str+="<a tag-cloud data-cloud='tag-cloud' name='"+tag.name+"' title='"+tag.name+"' id='"+tag.id+"' class='"+tag.css_class+"'>"+tag.name+"</a>",ret_str+="</li>";ret_str+="</ul>"}return ret_str+="<br><center>"+label.messages.close_msg+"</center><br>"},Section}()})}).call(this);