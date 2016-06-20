@extends('layouts.default')
@section('content')
<section id="welcome" class="welcome-section">
<div class="zoomButtonDiv">
<div class="zoomButton" data-type="prev" data-root=".demo"><</div>
<div class="zoomButton" data-type="next" data-root=".demo">></div>
</div>

<div class="zoomViewport demo">
 <div class="zoomContainer"> 
 <div id="tableToZoom">
 <div class="zoomTarget" order="5">
 <table  class="tg">
  <tr>
    <td class="tg-031e" rowspan="2"></td>
    <td class="tg-nto8 second" colspan="3" rowspan="2">
	<div class="block zoomTarget" order="3">
		<h1>Career</h1>
		<img class="right" src="img/main/graduation.jpg">
		I am an Information Systems Engineer, graduated from <a target="_blank" href="https://en.wikipedia.org/wiki/University_of_Buenos_Aires">Buenos Aires University</a>. The photo on the right was taken on my graduation day, I am with my parents.  I am a doing a Master in Information Security at <a target="_blank" href="https://en.wikipedia.org/wiki/University_of_Buenos_Aires">UBA</a>, too.<br>
		I am a Technology enthusiast, 
		
		I love discovering and testing new frameworks in any programming language and putting them in practice to solve people needs. 
		
		I vary as much as I can the frameworks I use from project to project, so that I can discover and learn new tools in the process of development. Most of the projects I have worked with can be found in the <a href="\portfolio">Portfolio</a> section. There you will find a detailed description of the architecture, implementation and repositories for open source projects I have been working on.
		<br>
		Find the complete Resume at the <a href="\resume">Resume</a> section.
		
		</div>
		</td>
    <td class="tg-031e">&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-nto8 third" rowspan="4">
	<div class="block zoomTarget" order="4">
		<h1>Personal interests</h1>
		mflorenciapereira.com.ar was thought as a way of sharing my experience and skills regarding information technology as well as a place to organize resources for my passions and hobbies.
		<br><br><img class="left" src="img/main/photos.jpg">In the <a href="\blog">Blog</a> section, you will find articles related to Technology, as well as other areas of interests.
		<br><br>I have plenty of hobbies. I love reading and taking photos. <br><img class="right" src="img/main/stonehenge.jpg">
		<br>I recently discovered my love for cooking and I found the <a href="\blog">Blog</a> section a good place to store some of the recipes I want to have at hand. 
		<br><br>I wish I had more time for travelling. <img class="right" src="img/main/liverpool.jpg">
		About two years ago I visited London and fell in love with the city. I had the opportunity to visit Liverpool, too, which made my holidays unforgettable since I am really fond of The Beatles. I love going to music concerts. I've recently seen Dave Mathews Band, Faith No More, Paul McCartney, The Rolling Stones and Aerosmith.
		<br><img class="left" src="img/main/patagonia2.jpg">More recently, I spent my holidays in Bariloche, a beautiful city in Patagonia. Photos and information about my trips can also be found in the <a href="\blog">Blog</a> section. 
		
		
		</div>
	</td>
  </tr>
  <tr>
    <td class="tg-vw75 first" colspan="3">
		<div class="block zoomTarget" order="2">
		<h1>About</h1>
		I am 28. I live in <a target="_blank" href="https://en.wikipedia.org/wiki/Buenos_Aires">Buenos Aires</a>, <a target="_blank" href="https://en.wikipedia.org/wiki/Argentina">Argentina.</a><br>
		I am a <a target="_blank" href="https://en.wikipedia.org/wiki/Porte%C3%B1o">porteña</a> by birth and by choice.<br><br>
		<img src="img/main/Argentina.png">
		Argentina is know for all of these:<br><br>
		<a target="_blank" href="https://en.wikipedia.org/wiki/Jorge_Luis_Borges"><img class="small" src="img/main/borges.png" alt="Jorge Luis Borges"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Julio_Cort%C3%A1zar"><img class="small" src="img/main/cortazar.png" alt="Julio Cortázar"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Ernesto_Sabato"><img class="small" alt="Ernesto Sábato" src="img/main/sabato.png"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Patagonia"><img alt="Patagonia" class="small" src="img/main/patagonia.png"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Tango"><img alt="Tango" class="small" src="img/main/tango.png"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Dulce_de_leche"><img alt="Dulce de leche" class="small" src="img/main/dulce.png"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Ren%C3%A9_Favaloro"><img class="small" alt="René Favaloro" src="img/main/favaloro.png"></a><a target="_blank" href="https://en.wikipedia.org/wiki/Lionel_Messi"><img class="small" alt="Lionel Messi" src="img/main/messi.png">
		</div>
	</td>
    <td class="tg-vw75 welcome">
		<div class="image zoomTarget" order="1">
      <img src="img/welcome.jpg" alt="" />      
      <span>Welcome on board!</span>
	  </div>
	  </td>
  </tr>
  <tr>
    <td class="tg-yw4l empty-title" colspan="2"></td>
    <td class="tg-nto8 title" colspan="2">Florencia Pereira<br></td>
  </tr>
  <tr>
    <td class="tg-031e" colspan="2" rowspan="2"></td>
    <td class="tg-yw4l empty-subtitle" rowspan="2"></td>
    <td class="tg-vw75 subtitle" rowspan="2">Personal Website<br></td>
  </tr>
  <tr>
    <td class="tg-yw4l">&nbsp;</td>
  </tr>

</table>
</div>
</div>

  </div>






</section>    
@stop
