(** recipe: services > main services view **)
<div class="services-page recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="service-wrap">
			<div itemprop="text">{{thispage.description}}</div>
			
			<div class="services-list">
				
				{{each service as service sort by sort asc}}
				
				<div class="z-row" onclick="window.location='{{service.getUrl()}}';" itemscope="" itemtype="http://schema.org/Product">
					<div class="col-1/3">
						<img class="z-responsive-width" src="{{service.image.getImage(330,250,crop)}}" alt="{{service.title}}" itemprop="image" />
					</div>
					<div class="col-2/3">
						<h3><a href="{{service.getUrl()}}" itemprop="url name">{{service.name}}</a></h3>
						<p itemprop="description">{{service.description.striptags(0,200)}}... <a href="{{service.getUrl()}}">Learn More</a></p>
					</div>
				</div>
				
				{{end-each}}
				
			</div>
		</div>
	</div>
</div>



