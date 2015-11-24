(** recipe: blog > categories page **)
<div class="blog recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>	
	
	<div class="z-row">
		
		<div class="col-2/3">
			<div class="blog-wrap">	
				<div class="page-description">{{thispage.description}}</div>
				<hr />
				<ul class="categories">
					{{each blog_category as category sort by category.name asc limit 100}}
					<li>
						<a href="{{category.getUrl()}}">{{category.name}}</a>		
					</li>
					{{end-each}}
				</ul>
			</div>
		</div>
		(** start of side bar **)		
		<div class="col-1/3">
			{{include blog-sidebar}}		
		</div>
	</div>
</div> (** end of blog **)



