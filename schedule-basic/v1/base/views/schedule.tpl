(** recipe: schedule basic > single page view **)

<div class="schedule-basic-page recipe-wrap">
	(** Simple output of the page title **)
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		
		<div class="col-2/3" itemprop="mainContentOfPage">
		
			<h2 itemprop="text">{{thispage.content}}</h2>
		
		</div>
		
		
		<div class="col-1/3">
			<div class="side-bar">
				<div class="widget">
					{{site.subnav(true)}}
				</div>
				
				<div class="Widget">
					{{include garnish-sidebar-contact-form}}
				</div>
				
				<div class="hours-wrap">
					<h3>{{thispage.hours_header_text}}</h3>
					{{thispage.hours}}
				</div>
				
			</div>
		</div>
	</div>
	
</div>




