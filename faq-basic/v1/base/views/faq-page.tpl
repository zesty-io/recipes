(** recipe: faq page > single page view **)

<div class="faq-page recipe-wrap">
	(** Simple output of the page title **)
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="faq-items">
		
		{{each faq_item as faq sort by faq.sort asc}}
		<div class="z-row">
			<div class="faq-item">
				{{if {faq.image} }}
				<div class="col-1/4">
					<img class="zesty-responsive-width" src="{{faq.image.getImage(320,240,crop)}}" />
				</div>
				<div class="col-3/4">
				{{else}}
				<div class="col-1">
				{{end-if}}
					<h3 class="faq-header">{{faq.question}}</h3>
					<p>{{faq.answer}}</p>
				</div>
			</div>
		</div>
		<hr />
		{{end-each}}
	</div>
</div>


