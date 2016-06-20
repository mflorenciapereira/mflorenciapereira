@extends('layouts.default')
@section('content')
<section id="portfolio" class="diamond-background">
	<div id="portfolioMenu">	
		<h1>Portfolio</h1>	       
		<br>
		@foreach($projects as $key => $value)
		<div class="card" projectId="{{ $value->id }}">
			<img src="{{ $value->image }}"/>
			<name>{{ $value->name }}</name><br>
			<description>{{ $value->minidescription }}</description><br><br>
			<tags>
			@foreach( $value->tags as $keyTag => $valueTag)
			<tag>{{$valueTag->description}}</tag>
			@endforeach
			</tags>
		</div>
		@endforeach
		
	</div>
</section>  
@stop