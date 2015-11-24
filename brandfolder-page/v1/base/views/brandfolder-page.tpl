(** recipe: brand folder > main view **)
<div class="brandfolder-page recipe-wrap">

	(** Simple output of the page title **)
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="col-1">
			
			(** Brandfolder's current API allows for logos,images,people they may add more over time **)	
			<script src="https://brandfolder.com/api/beta/widgets.js?brand={{recipe.brandfolder_user}}&widgets=logos,images,people"></script>
			
			<h2>{{thispage.logos_title}}</h2>
			<div data-bf-widget="logos"></div>
			
			<h2>{{thispage.images_title}}</h2>
			<div data-bf-widget="images"></div>
			
			<h2>{{thispage.people_title}}</h2>
			<div data-bf-widget="people"></div>		
			
			<p>To view more brand assets, visit our <a href="https://brandfolder.com/{{recipe.brandfolder_user}}" class="brandfolder" style="clear:both">Brandfolder Page</a>.</p>
		</div>
	</div>
</div>



