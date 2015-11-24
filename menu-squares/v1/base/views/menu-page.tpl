(** recipe: menu-squares > main menu view **)
<div class="menu-page recipe-wrap">
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	<div class="z-row">
		<div class="col-1/2">
			<div itemprop="text">{{thispage.content}}</div>
		</div>
		<div class="col-1/2">
			<img src="{{thispage.image.getImage()}}" width="100%" alt=" {{thispage.title}} Opening Image" />
		</div>
	</div>
	
	<div class="z-row">
		{{each menu_items as item sort by item.sort asc}}
		<div class="col-1/4">
			<div class="menu-item">
				
				<h3>{{item.title}}</h3>
				<img src="{{item.image.getImage(300,300,crop)}}" alt="{{item.title}} menu item" class="z-responsive-width" />
				<p>{{item.description}}</p>
			</div>
		</div>
		{{if {index} % 4 == 0}}
	</div>
	<div class="z-row">
		{{end-if}}
		{{end-each}}
	</div>
</div>