(** recipe: team > main team page view **)
<div class="team-page recipe-wrap">
	(** if there is an image, show it in the header with an H1 overlay **)
	{{ if {thispage.image} }}
	<div class="opening-team-image" style="background-image: url({{thispage.image.getImage()}});">
		<h1 itemprop="name headline">{{thispage.title}}</h1>
	</div>
	(** else show only the h1 **)
	{{else}}
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	{{end-if}}
	<div class="z-row">
		<div class="team-wrap">	
			<div itemprop="text">{{thispage.description}}</div>
			<div class="team-members">
				<div class="z-row">
				{{each team_member as member sort by member.sort asc}}
					<div class="col-1/4" itemscope="" itemtype="http://schema.org/Person">
						<a class="member" href="{{member.getUrl()}}" itemprop="url">
							<img itemprop="image" class="z-responsive-width" src="{{member.image.getImage(600,600,crop)}}" />
							<h4 itemprop="name">{{member.name}}</h4>
							<span itemprop="jobTitle">{{member.title}}</span>
						</a>
					</div>
				
				(** logic to create perfect columns and rows **)
				{{if {index} % 4 == 0}}
				</div>
				<div class="z-row">
				{{end-if}}
				
				{{end-each}}
				</div>
			</div>
		</div>
	</div>
</div>



