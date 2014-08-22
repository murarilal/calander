$(function() {
  $(".pagination a").click(function(){
  	$.get(this.href, null, null, "script");
  	 return false;
  });
});

//$(function() {
//  $(".pagination a").live("click", function() {
//  	$(".pagination").html("Page is loading...");
//  	$.getScript(this.href);
//  	 return false;
//  });
//});

