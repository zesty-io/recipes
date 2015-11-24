(** recipe: blog > main tags view **)
<div class="blog recipe-wrap">
	<h1>{{thispage.title}}</h1>
	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">	
				<div class="page-description">{{thispage.description}}</div>
				<hr />
				<ul class="tags">
					{{each blog_tag as tag sort by tag.name asc limit 100}}
					<li>
						<a href="{{tag.getUrl()}}">{{tag.name}}</a>		
					</li>
					{{end-each}}
				</ul>
			</div>
		</div>
		<div class="col-1/3">
			{{include blog-sidebar}}
		</div>
	</div>
</div>



