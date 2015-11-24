(** recipe: simple-team > main view **)
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
				{{each team_member as member sort by member.sort asc}}
				<div class="z-row" itemscope="" itemtype="http://schema.org/Person">
					<div class="member">
						<div class="col-1/4">
							<img itemprop="image" src="{{member.image.getImage(600,600,crop)}}" />
						</div>
						<div class="col-3/4">
							<h2 itemprop="name">{{member.name}}</h2>
							<h6 itemprop="jobTitle">{{member.title}}</h6>
							{{if {member.email} && {member.phone} }}
							<a itemprop="email" href="mailto:{{member.email.obfuscate()}}">{{member.email.obfuscate()}}</a>
							&nbsp;|&nbsp;
							<a itemprop="telephone" href="tel:{{member.phone.obfuscate()}}">{{member.phone.obfuscate()}}</a><br><br>
							{{else-if {member.email} }}
							<a itemprop="email" href="mailto:{{member.email.obfuscate()}}">{{member.email.obfuscate()}}</a><br><br>
							{{else-if {member.phone} }}
							<a itemprop="telephone" href="tel:{{member.phone.obfuscate()}}">{{member.phone.obfuscate()}}</a><br><br>
							{{end-if}}
							<div itemprop="text">{{member.description}}</div>
						</div>
					</div>
				</div>
				{{end-each}}
			</div>
			
		</div>
	</div>
</div>