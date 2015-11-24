(** recipe: team > single team member view **)
<div class="team-member recipe-wrap" itemscope="" itemtype="http://schema.org/Person">
	<h1 itemprop="name">{{thispage.name}}</h1>
	<div class="z-row">
		<div class="col-2/3">
			<div class="team-wrap">
				<img src="{{thispage.image.getImage()}}" class="z-responsive-width" itemprop="image" align="left">
				<h4 itemprop="jobTitle">{{thispage.title}}</h4>
				{{if {thispage.phone} }}
				<h6>Phone</h6>
				<a itemprop="telephone" href="{{thispage.phone.obfuscate()}}">{{thispage.phone.obfuscate()}}</a><br><br>
				{{end-if}}
				{{if {thispage.email} }}
				<h6>Email</h6>
				<a itemprop="email" href="{{thispage.email.obfuscate()}}">{{thispage.email.obfuscate()}}</a><br><br>
				{{end-if}}
				{{if {thispage.education} }}
				<h6>Education</h6>
				<div itemprop="alumniOf">{{thispage.education}}</div>
				{{end-if}}
				<h6>Bio</h6>
				<div class="description" itemprop="description">{{thispage.description}}</div>
				<div>{{thispage.misc}}</div>
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



