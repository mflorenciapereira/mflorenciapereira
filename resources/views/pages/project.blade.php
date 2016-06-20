@extends('layouts.default')
@section('content')
<section id="project" class="diamond-background">
<div id="project{{ $project->id }}" >
	
	<h1>{{ $project->name }}<a href="/portfolio"> <i id="close"  class="float-right fa fa-times"></i></a></h1>
	<img class="float-right quarter-img polaroid" src="{{ $project->image }}">
	<h3>Repository</h3>
	<a href="{{$project->repository}}">{{ $project->repository }}</a>
	<h3>Description</h3>
	{{ $project->description }}
	<h3>Architecture</h3>
	{{ $project->architecture }}
	<h3>Tags</h3>
	<tags>
	@foreach($project->tags as $tagKey => $tag)
	<tag>{{ $tag->description }}</tag>
	@endforeach
	</tags>
	<h3>Gallery</h3><br>
	@foreach($project->images as $ImageKey => $image)
	<a class="image-link" href="{{ $image->source }}"><img class="thumb" src="{{ $image->source }}"></a>
	@endforeach
</div>
		
		
		
		
		

		

</section>  
@stop