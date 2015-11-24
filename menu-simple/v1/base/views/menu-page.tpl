(** recipe: simple > main menu view **)
<div class="menu-page recipe-wrap">
	<div class="z-row">
		<div class="menu-wrap">
			<div class="menu-header">
				<img class="responsive-width" src="{{thispage.image.getImage(960,330,crop)}}" itemprop="image" />
			</div>
			<h1 itemprop="name headline">{{thispage.title}}</h1>
			<div itemprop="text">{{thispage.content}}</div>
			<div class="menu-items">
				{{each menu_categories as cat sort by cat.sort asc}}
				<h3 class="category-header">{{cat.name}}</h3>
				<div class="category-items">
					{{each menu_items as item where item.category = {cat.zid} sort by item.sort asc}}
					
					<div class="z-row">
						
						<div class="item">
							<div class="col-1/4">
								<img class="z-responsive-width" src="{{item.image.getImage(320,240,crop)}}" />
							</div>
							
							<div class="col-2/4">
								<h2>{{item.name}}</h2>
								<p>{{item.description}}</p>
							</div>
							
							<div class="col-1/4">
								<h2 class="price">${{item.price}}</h2>
							</div>
						</div>
						
					</div>
					{{end-each}}
				</div><!-- .category-items -->
				{{end-each}}
			</div><!-- .menu-items -->
		</div><!-- .menu-wrap -->
	</div><!-- .z-row -->
</div><!-- .menu-page -->



