(** recipe: portfolio > main portfolio view **)
<div class="portfolio-page recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="portfolio-wrap">
			<div itemprop="text">{{thispage.content}}</div>
		
			<div class="portfolio-list">
				
				<div class="z-row">
				{{each portfolio_item as port sort by port.zid desc}}
					
					<div class="col-1/4" itemscope="" itemtype="http://schema.org/CreativeWork">
						<a class="portfolio-item" href="{{port.getUrl()}}" title="{{port.seo_link_title}}" itemprop="url">
							<img class="z-responsive-width" itemprop="image" src="{{port.main_image.getImage(300,335,crop)}}" alt="{{port.name}} Image" />
							<h5 itemprop="name" class="name">{{port.name}}</h5>
						</a>
					</div>
					
					(** logic to create perfect columns and rows **)
					{{if {index} % 4 == 0}}
					</div><div class="z-row">
					{{end-if}}
	
				{{end-each}}
				</div>
				
			</div>
		</div>
	</div>
	
	<hr />
	
	<h4>{{thispage.second_title}}</h4>
	{{site.subNav(false,1)}}
	
</div>



