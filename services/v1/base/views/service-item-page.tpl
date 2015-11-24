(** recipe: services > single service view **)
<div class="services-page recipe-wrap" itemscope="" itemtype="http://schema.org/Product">
	<h1 itemprop="name headline">{{thispage.name}}</h1>
	<div class="z-row">
		<div class="col-2/3">
			<div class="service-description" itemprop="mainContentOfPage">
				{{ if {thispage.image} }}
				<img class="main-image" src="{{thispage.image.getImage(260,,fit)}}" align="left" alt="{{thispage.article}} Image" itemprop="image" />
				{{end-if}}
				<div itemprop="text">{{thispage.description}}</div>
			</div>
		</div>
		<div class="col-1/3">
			<div class="side-bar">
				<div class="widget">
					{{site.subnav(true)}}
				</div>
			</div>
		</div>
	</div>
</div>



