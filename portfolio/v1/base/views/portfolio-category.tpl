(** recipe: portfolio > single category view **)
<div class="portfolio-category recipe-wrap">
	<h1 itemprop="name headline">{{thispage.name}}</h1>
	
	<div class="z-row">
	
		<div class="col-2/3">
		
			<div class="portfolio-wrap">
				<div itemprop="text">{{thispage.description}}</div>
				
				<div class="portfolio-list">
					<div class="z-row">
						{{each portfolio_item as port_item where z.parent_zid = {thispage.zid} sort by port_item.sort asc}}
						<div class="col-1/3" itemscope="" itemtype="http://schema.org/CreativeWork">
							<a class="portfolio-item" href="{{port_item.getUrl()}}" title="{{port_item.seo_link_title}}" itemprop="url">
								<img class="z-responsive-width" itemprop="image" src="{{port_item.main_image.getImage(300,335,crop)}}" alt="{{port_item.name}} Image" />
								<h5 itemprop="name" class="name">{{port_item.name}}</h5>
							</a>
						</div>
						
							(** logic to create perfect columns and rows **)
							{{if {index} % 3 == 0}}
					</div><div class="z-row">
							{{end-if}}
						
						
						{{end-each}}
						
					</div>
				</div>
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



