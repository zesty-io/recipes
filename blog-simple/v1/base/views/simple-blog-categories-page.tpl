(** recipe: simple blog > categories view **)
<div class="simple-blog recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">	
				
				<div class="page-description">{{thispage.description}}</div>
				<hr />
				<ul class="categories">
					{{each simple_blog_category as category sort by category.name asc limit 100}}
					<li>
						<h4><a href="{{category.getUrl()}}">{{category.name}}</a></h4>
					</li>
					{{end-each}}
				</ul>
			</div>
		</div>
		
		<div class="col-1/3">
			{{include simple_blog-sidebar}}
		</div>
	</div>
</div>