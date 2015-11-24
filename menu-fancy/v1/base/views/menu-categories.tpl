(** recipe: menu-fancy > main menu view **)
<div class="menu-page recipe-wrap">
	<div class="z-row">
		<div class="menu-wrap">
			
			<div class="col-1/5">
				<div class="sub-menu">
					{{site.subnav(true)}}
				</div>
			</div>
			<div class="col-4/5">
				<div class="menu-content">
					<div class="menu-items">
						
						<h3 class="category-header">{{thispage.name}}</h3>
						<p>{{thispage.description}}</p>
						<div class="category-items">
							<div class="z-row">
								{{each menu_items as item where item.category = {thispage.zid} sort by item.sort asc}}		
								
									<div class="col-1/2">
										<div class="item">
										<h3>{{item.name}}</h3>
										<p>{{item.description}}</p>																				
										<h6 class="price">${{item.price}}</h6>
									</div>
								</div>																
								{{end-each}}
							</div>
						</div><!-- .category-items -->
						
					</div><!-- .menu-items -->
				</div>
			</div>
		</div><!-- .menu-wrap -->
	</div><!-- .z-row -->
</div><!-- .menu-page -->


