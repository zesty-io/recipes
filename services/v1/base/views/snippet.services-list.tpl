(** recipe: services > service list snippet **)
<h3><a href="{{services_page.first().getUrl()}}">{{services_page.first().seo_link_title}}</a></h3>

<ul class="services-list-mini">

	{{each service as service sort by sort asc}}
	
	<li itemscope="" itemtype="http://schema.org/Product">
		<a href="{{service.getUrl()}}" itemprop="url name">{{service.name}}</a>		
	</li>
	
	{{end-each}}

</ul>



