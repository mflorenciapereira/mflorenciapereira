@extends('layouts.default')
@section('content')
 <section id="contactme" class="contactme-section">
        <h1>Contact me</h1>	       
		<div class="contact-me">
		<div id="send-result">
@if ( Session::has('success') )
   <div class="ok">
      {{ Session::get('success') }}<br><br>
  </div>
  
@endif
		@if (count($errors) > 0)
		<div >
			<ul class="error">
				@foreach ($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>
			<br>
		</div>
		
		
		@endif
		</div>
		
		{!! Form::open(array('route' => 'contact-me'))  !!}
			
			{!! Form::label('name', 'Name') !!} <br>
			{!! Form::input('text', 'name', null,['placeholder' => 'Name', 'size' => '70']) !!}
			<br><br>
			{!! Form::label('email', 'Email') !!} <br>
			{!! Form::input('text', 'email', null,['placeholder' => 'Email', 'size' => '70']) !!}
			<br><br>
			{!! Form::label('message', 'Message') !!} <br>
			{!! Form::textarea('message', null, ['size' => '60x13', 'placeholder' => 'Message']) !!}			
			<br><br>
			{!! Form::submit('Send') !!}			
		{!! Form::close() !!}
		
		
		</div>
		<div class="follow-me">
		<h2>You can also follow me on...</h2>
		<a target="_blank" title="Follow me on Twitter" href="http://www.twitter.com/mflorenciap"><img alt="Follow me on twitter" src="img/icons/Twitter.png" border=0>mflorenciap</a>
		<a target="_blank" title="Follow me on facebook" href="http://www.facebook.com/mflorenciapereira"><img alt="Follow me on facebook" src="img/icons/Facebook.png" border=0>mflorenciapereira</a>
		<a target="_blank" title="Follow me on facebook" href="https://ar.linkedin.com/in/florencia-pereira-91375014"><img alt="Follow me on facebook" src="img/icons/LinkedIn.png" border=0>florencia-pereira-91375014</a>
		<a target="_blank" title="Follow me on youtube" href="http://www.youtube.com/mflorenciapereira"><img alt="Follow me on youtube" src="img/icons/Youtube.png" border=0>mflorenciapereira</a>
		<a target="_blank" title="Follow me on instagram" href="http://www.instagram.com/mflorenciapereira"><img alt="Follow me on instagram" src="img/icons/Instagram.png" border=0>mflorenciapereira</a>
		<a target="_blank" title="Follow me on google plus" href="https://plus.google.com/mflorenciapereira"><img alt="Follow me on google plus" src="img/icons/Google.png" border=0>mflorenciapereira</a>
		<a target="_blank" title="Follow me on pinterest" href="http://www.pinterest.com/mflorenciapereira"><img alt="Follow me on pinterest" src="img/icons/Pinterest.png" border=0>mflorenciap</a>
		</div>
    </section>
@stop