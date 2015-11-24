(** recipe: contact > contact page view **)
<div class="contact-page recipe-wrap" itemscope="" itemtype="http://schema.org/LocalBusiness">

	<h1 itemprop="name headline">{{thispage.title}}</h1>

	<div class="z-row">
		
		<div class="col-2/3">
			<div class="map-wrap">
				{{if {thispage.link_to_map} }}
				<iframe class="z-responsive-width" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" 
				src="{{thispage.link_to_map}}&sensor=false&maptype=terrain&output=embed"></iframe>
				{{else}}
				<img class="z-responsive-width" src="{{thispage.backup_photo.getImage()}}" alt="{{clippings.site_name}} location photo" />
				{{end-if}}
			</div>
		</div>(** end of .col-2/3 **)
		
		<div class="col-1/3">
			<div class="side-bar">
				{{if {thispage.hours} }}
				<h3>Hours of Operation</h3>
				<p>{{thispage.hours}}</p>
				{{end-if}}
				
				{{if {thispage.address} }}
				<h3>Address</h3>
				<address itemprop="address" itemscope="" itemtype="http://schema.org/PostalAddress">
					<p>
						<strong itemprop="name">{{thispage.location_name}}</strong><br />
						<span class="street" itemprop="streetAddress">{{thispage.address}}</span><br />
						<span class="city" itemprop="addressLocality">{{thispage.city}}</span>, 
						<span class="state" itemprop="addressRegion">{{thispage.state}}</span> 
						<span class="zip" itemprop="postalCode">{{thispage.zip}}</span><br />
						{{if {thispage.link_to_map} }}
						(<a href="{{thispage.link_to_map}}" target="_blank">Directions</a>)
						{{end-if}}
					</p>
				</address>
				{{end-if}}
				
				{{if {thispage.email} }}
				<h3>Contact Details</h3>
				<h6>Email</h6>
				<a class="email" href="mailto:{{thispage.email.obfuscate()}}" itemprop="email">{{thispage.email.obfuscate()}}</a><br /><br />
				{{end-if}}
				{{if {thispage.phone} }}
				<h6>Phone</h6>
				<a href="tel:{{thispage.phone.obfuscate()}}" class="phone" itemprop="telephone">{{thispage.phone.obfuscate()}}</a><br /><br />
				{{end-if}}
				{{if {thispage.fax} }}
				<h6>Fax</h6>
				<span class="fax" itemprop="faxNumber">{{thispage.fax.obfuscate()}}</span><br /><br />
				{{end-if}}
			</div>(** end of .side-bar **)
			
		</div>(** end of .col-1/3 **)
		
	</div>(** end of .z-row **)
	
</div>(** end of .contact-page **)


