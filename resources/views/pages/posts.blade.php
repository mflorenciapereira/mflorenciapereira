@extends('layouts.default')
@section('content')
 
<section id="blog" class="blog-section">
<div  href="javascript:void(0);" onclick="expand('#blog-options')" class="blog-options-title">
Topics
</div>
<div>
<div class="blog-content" >
	<h1>Posts</h1>
	@if($posts->isEmpty())
		No posts found.
	@else
		@foreach($posts as $key => $post)
		<h3><a href="/post/{{ $post->id }}">{{ $post->title }}</a></h3>
		@endforeach
	@endif	
	
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