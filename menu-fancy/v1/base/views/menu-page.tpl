(** recipe: menu-fancy > main menu view **)
<div class="menu-page recipe-wrap">
	<div class="z-row">
		<div class="menu-wrap">
			
			<div class="col-1/5" >
				<div class="sub-menu">
					{{site.subnav(true)}}
				</div>
				
			</div>
			
			<div class="col-4/5 z-last">
				<div class="menu-content" >
					<h1 itemprop="name headline">{{thispage.title}}</h1>
					<div itemprop="text">{{thispage.content}}</div>
					<div class="menu-categories">
						<div class="z-row menu-cats">
							{{each menu_categories as men sort by men.sort}}
							<div class="col-1/3">
								<div class="menu-image-wrap" >
									<a href="{{men.getUrl()}}" >
										<img title="{{men.name}}" alt="{{men.name}}" src="{{men.header_image.getImage(350,350,crop)}}" />
										<br/>
										<h3 class="button">{{men.name}}</h3>
									</a>
								</div>
							</div>
							{{if {index} % 3 == 0}}
						</div>
						<hr/>
						<div class="z-row menu-cats">
							{{end-if}}
							{{end-each}}
						</div>
					</div>
					
				</div><!-- .menu-content -->
				
			</div>
		</div><!-- .menu-wrap -->
	</div><!-- .z-row -->
</div><!-- .menu-page -->


