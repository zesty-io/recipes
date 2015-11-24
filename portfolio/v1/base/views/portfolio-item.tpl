(** recipe: portfolio > single portfolio item view **)
<div class="portfolio-item recipe-wrap" itemscope="" itemtype="http://schema.org/CreativeWork">

	<h1 itemprop="name headline">{{thispage.name}}</h1>
	
	<div class="z-row">
		
		<div class="col-2/3">
			
			<div class="portfolio-description">
				{{ if {thispage.main_image} }}
				<div class="col-1/2">
					<img itemprop="image" class="z-responsive-width" src="{{thispage.main_image.getImage(260,,fit)}}" alt="{{thispage.name}} Image" />
				</div>
				{{end-if}}
				<div name="text" class="col-1/2">{{thispage.description}}</div>
			</div>
			
		</div>
		
		<div class="col-1/3">
			<div class="side-bar">
				<div class="widget">
					{{site.subnav(true, 1)}}
				</div>
			</div>
		</div>
	</div>
</div>



