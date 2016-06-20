<script>

		
		
function myFunction() {
    document.getElementsByClassName("topnav")[0].classList.toggle("responsive");
};

function expand(id) {	
	if($(id).hasClass("inline")){
		$(id).removeClass("inline");
	}else{
		$(id).addClass("inline");
	};
};

var searchByTag = function(tagId){
	window.location.replace("/posts-tag/"+tagId);			
};


var renderShareButtons = function(post){
	return '<div id="share-buttons" class="inline text-right"><a href="mailto:?Subject=Cómo evitar que un ransomware cifre los archivos en Windows (I)&amp;Body=Click this link to find out more on  Cómo evitar que un ransomware cifre los archivos en Windows (I) http://www.mflorenciapereira.com.ar/blogId=1">	<i class="fa fa-envelope share-icon" aria-hidden="true"></i></a><a href="javascript:;" onclick="window.print()">	<i class="fa fa-print share-icon" aria-hidden="true" alt="Print"></i></a>		<a href="http://www.facebook.com/sharer.php?u=https://www.mflorenciapereira.com.ar/blogId=1" target="_blank">	<i class="fa fa-facebook-official share-icon" aria-hidden="true" alt="Facebook"></i></a><a href="https://plus.google.com/share?url=https://simplesharebuttons.com" target="_blank">	<i class="fa fa-google-plus share-icon" aria-hidden="true" alt="Google"></i></a><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com" target="_blank">	<i class="fa fa-linkedin share-icon" aria-hidden="true" alt="LinkedIn"></i></a><a href="javascript:void((function()%7Bvar%20e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)%7D)());">	<i class="fa fa-pinterest-p share-icon" aria-hidden="true" alt="Pinterest"></i></a><a href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank">	<i class="fa fa-twitter share-icon" aria-hidden="true" alt="Twitter"></i></a>				</div>';
}

var renderPostResults = function(data){
	var results = "<h1>Posts</h1>";
	if(data.length==0){
		$('.blog-content').html("<h1>Posts</h1><br>No posts found.");
	}
	$.each( data, function( index, post ) {
			results+=renderPostResult(post);
			$('.blog-content').html(results);
	});	
}
	
var renderPostResult = function(post) {
	return '<h3 onclick="getPost('+post.id+')">'+post.title+'</h3>';
};

var renderPost = function(post){
	return '<h4 id="blog-date" class="inline">'+post.date+'</h4>'+renderShareButtons(post)+'<hr><h1>'+post.title+'</h1>'+post.article;
}

var getPost = function(id){
	$.get( "/post/"+id, function( data ) {		
		$('.blog-content').html(renderPost(data));
	});		
}

var send = function(){
	var name = $("input[name=name]").val();
	var email = $("input[name=email]").val();
	var message = $("textarea[name=message]").val();
	$.post( "/contact", { name: name, email: email, message: message })
		.done(function( data ) {
			$('#send-result').html('<span class="ok">'+data+'</span><br><br>');
		})
		.fail(function( data ) {			
			var errors = '<span class="error">';
			
			if(data.responseJSON.name!=undefined){
				errors += data.responseJSON.name + '<br>';
			}
			
			if(data.responseJSON.email!=undefined){
				errors += data.responseJSON.email + '<br>';
			}
			
						
			if(data.responseJSON.message!=undefined){
				errors += data.responseJSON.message + '<br>';
			};
			
			errors+='</span><br></div>';
			$('#send-result').html(errors);
		});
	
}
	

$(function() {
	 $.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
	});
	
	var renderCard = function(id,source,name,description,projectTags) {
		var tags = "";
		
		$.each( projectTags, function(index,tag) {
		  tags+=renderTag(tag.description);
		});
		
		return '<div class="card" projectId="'+id+'"><img src="'+source+'"/><name>'+name+'</name><br><description>'+description+'</description><br><br><tags>'+tags+' </tags></div>';
	}
	
	var renderTag = function(description, id) {
		return '<tag onclick="searchByTag('+id+')">'+description+'</tag>';
	};	
	
	var renderImage = function(href,source) {
		return '<a class="image-link" href="'+href+'"><img class="thumb" src="'+source+'"></a>';
	};
	
	var renderProject = function(index,name,image,repository, description, architecture, projectTags, projectImages) {
		var tags = "";
		var imgs = "";
		$.each( projectTags, function(index,tag) {
		  tags+=renderTag(tag.description,"");
		});
		
		var imgs = "";
		$.each( projectImages, function(index,img) {
		  imgs+=renderImage(img.source, img.source);
		});
		
		return '<div id="project'+index+'" style="display:none"><h1>'+name+'<i id="close" class="float-right fa fa-times"></i></h1><img class="float-right quarter-img polaroid" src="'+image+'"><h3>Repository</h3><a href="'+repository+'">'+repository+'</a><h3>Description</h3>'+description+'<h3>Architecture</h3>'+architecture+'<h3>Tags</h3><tags>'+tags+'</tags><h3>Gallery</h3><br>'+imgs+'</div>';
	};
	
	var renderCategory = function(category) {
		var tags = "";
		$.each( category.tags, function(index,tag) {
		  tags+=renderTag(tag.description, tag.id);
		});
		return "<h4>"+category.name+'</h4>'+tags;
	};
	
	
	
	var showProject = function(){
		var id = $(this).attr('projectId');
		$('#portfolioMenu').fadeOut('slow', function() {				
			var idProject = id;
			window.location.replace("project/"+idProject);			
			
		});    
	};
		

	
	
	$('.card').click(showProject);
	
	
	
	
	$("section").mouseenter(function(){
   	 var id = $(this).attr('id');
   	 $('.resume-nav li').removeClass('resume-nav-active');
   	 $("[href=#"+id+"]").parent().addClass('resume-nav-active');
   });
		
		
	$('.image-link').magnificPopup({type:'image'});		

settings = {
    // zoomed size relative to the container element
    // 0.0-1.0
    targetsize: 0.9,
    // scale content to screen based on their size
    // "width"|"height"|"both"
    scalemode: "both",
    // animation duration
    duration: 450,
    // easing of animation, similar to css transition params
    // "linear"|"ease"|"ease-in"|"ease-out"|"ease-in-out"|[p1,p2,p3,p4]
    // [p1,p2,p3,p4] refer to cubic-bezier curve params
    easing: "ease",
    // use browser native animation in webkit, provides faster and nicer
    // animations but on some older machines, the content that is zoomed
    // may show up as pixelated.
    nativeanimation: true,
    // root element to zoom relative to
    // (this element needs to be positioned)
    root: $('#welcome'),
    // show debug points in element corners. helps
    // at debugging when zoomooz positioning fails
    debug: false,
    // this function is called with the element that is zoomed to in this
    // when animation ends
    animationendcallback: null,
    // this specifies, that clicking an element that is zoomed to zooms
    // back out
    closeclick: false,
    // don't reset scroll before zooming. less jaggy zoom starts and ends on
    // mobile browsers, but causes issues when zooming to elements when scrolled
    // to a specific distance in document, typically around 2000px on webkit.
    preservescroll: false
}
// settings can be set for both the zoomTo and zoomTarget calls:
$("#tableToZoom").zoomTo(settings);	
console.log("hola");
		
     
});
hljs.initHighlightingOnLoad();

</script>