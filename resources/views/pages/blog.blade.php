@extends('layouts.default')
@section('content')
 
<section id="blog" class="blog-section">
<div  href="javascript:void(0);" onclick="expand('#blog-options')" class="blog-options-title">
Topics
</div>
<div>
<div class="blog-content" >
	<h4 id="blog-date" class="inline">{{ $post->date }}</h4>
	<div id="share-buttons" class="inline text-right">
	<?php $url = 'http://mflorenciapereira-mflorp.rhcloud.com/blog/'.$post->id ?>
	<?php $message = 'I thought you might find interesting the following post '.$url ?>
	<a href="mailto:?Subject={{$post->title}}&amp;Body={{ $message }}"><i class="fa fa-envelope share-icon" aria-hidden="true"></i></a>
	<a href="javascript:;" onclick="window.print()"><i class="fa fa-print share-icon" aria-hidden="true" alt="Print"></i></a>
	<a href="http://www.facebook.com/sharer.php?u={{ $url }}" target="_blank"><i class="fa fa-facebook-official share-icon" aria-hidden="true" alt="Facebook"></i></a>
	<a href="https://plus.google.com/share?url={{ $url }}" target="_blank"><i class="fa fa-google-plus share-icon" aria-hidden="true" alt="Google"></i></a>
	<a href="http://www.linkedin.com/shareArticle?mini=true&amp;url={{ $url }}" target="_blank"><i class="fa fa-linkedin share-icon" aria-hidden="true" alt="LinkedIn"></i></a>
	<a href="javascript:void((function()%7Bvar%20e=document.createElement("script");e.setAttribute("type","text/javascript");e.setAttribute("charset","UTF-8");e.setAttribute("src","http://assets.pinterest.com/js/pinmarklet.js?r="+Math.random()*99999999);document.body.appendChild(e)%7D)());">	<i class="fa fa-pinterest-p share-icon" aria-hidden="true" alt="Pinterest"></i></a>
	<a href="https://twitter.com/share?url={{ $url }}&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank"><i class="fa fa-twitter share-icon" aria-hidden="true" alt="Twitter"></i></a></div>
	<hr><h1>{{ $post->title }}</h1>
		<?php echo ($post->article) ?>
</div>
<div id="blog-options" class="blog-options one-quarter top-align text-left">
	<h3>Topics</h3>
	@foreach($categories as $key => $value)
	<h4>{{ $value->name }}</h4>
		@foreach($value->tags as $tagKey => $tag)
		<tag onclick="searchByTag({{$tag->id}})">{{ $tag->description }}</tag>
		@endforeach
	@endforeach
	<h3>Search</h3>		
	{!! Form::open(array('route' => 'search-post'))  !!}
		{!! Form::input('search', 'q', null,['placeholder' => 'Words']) !!}
		{!! Form::button('<i class="fa fa-search" aria-hidden="true"></i>', array('id' => 'search-button','type' => 'submit')) !!}			
	{!! Form::close() !!}
	<br>
</div>
</div>
   </section>	
@stop