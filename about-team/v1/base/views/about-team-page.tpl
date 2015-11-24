(** recipe: about-team > main view **)
<div class="team-page recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="team-wrap">	
			<div itemprop="text">{{thispage.description}}</div>
			<div class="team-members">
				<div class="z-row">
					{{each team_member as member sort by member.sort asc}}
					<div class="col-1/5" itemscope="" itemtype="http://schema.org/Person">
						<div class="person-wrap">
							<img itemprop="image" class="face"src="{{member.image.getImage(300)}}" />
							<div class="member">
								<h2 itemprop="name">{{member.name}}</h2>
								<img src="{{clippings.logo_icon.getImage()}}">
								<h6 itemprop="jobTitle">{{member.title}}</h6>
								{{if {member.email} && {member.phone} }}
								<a itemprop="email" href="mailto:{{member.email.obfuscate()}}">{{member.email.obfuscate()}}</a><br>
								<a itemprop="telephone" href="tel:{{member.phone.obfuscate()}}">{{member.phone.obfuscate()}}</a>
								{{else-if {member.email} }}
								<a itemprop="email" href="mailto:{{member.email.obfuscate()}}">{{member.email.obfuscate()}}</a>
								{{else-if {member.phone} }}
								<a itemprop="telephone" href="tel:{{member.phone.obfuscate()}}">{{member.phone.obfuscate()}}</a>
								{{end-if}}
							</div>
						</div>
					</div>
					{{end-each}}
				</div>
			</div>
		</div>
	</div>
	<div class="about-middle" style="background-image: url({{thispage.team_image.getImage()}});">
		<h4><em> {{thispage.info_title}} </em></h4>
		<div class="z-row">
			<div class="col-1/2">
				<p> {{thispage.team_info}}</p>
			</div>
			<div class="col-1/2">
				<p>{{thispage.team_info_two}}</p>
			</div>
		</div>
	</div>
	
	<div class="quote">
		<h4>{{thispage.quote}}</h4>
		<h6><em>{{thispage.quote_name}}</em></h6>
	</div>
	<div>
		<img src="{{thispage.second_team_image.getImage()}}" class="z-responsive-width">
	</div>
</div>



