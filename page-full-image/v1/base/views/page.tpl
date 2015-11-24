(** recipe: page with full image > single page view **)
<div class="full-width-page recipe-wrap">
	
	<div class="main-image">
		<img alt="{{thispage.title}} Image" class="z-responsive-width" src="{{thispage.image.getImage()}}">
	</div>
	
	<h1 class="title"> {{thispage.title}} </h1>
	<p class="description"> {{thispage.content}} </p>
	
</div>



