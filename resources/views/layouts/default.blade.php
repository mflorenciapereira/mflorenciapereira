<!doctype html>
<html>
<head>
    @include('includes.head')
</head>
<body>
 
<div class="container">
   <header>
   @include('includes.header')		
   </header>

   <div class="content">
   @yield('content')	 
   </div>	
   
   <footer>
   @yield('footer')	 
   </footer>

</div>

@include('includes.scripts')


</body>
</html>