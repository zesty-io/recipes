(** recipe: simple blog > single category snippet **)
<div class="simple-blog recipe-wrap">
	
	<h1 itemprop="name headline">Articles categorized in "{{thispage.name}}"</h1>	
	
	<div class="z-row">
		
		<div class="col-2/3">
			<div class="blog-wrap">
				
				<div class="article-listing">
					{{each simple_blog_article as cat_article where z.parent_zid = {thispage.zid} sort by cat_article.date DESC limit 20}}
					<div>
						<h3>{{cat_article.title}}</h3>
						<em>{{cat_article.date.date(Y-m-d)}}</em>
						<p>{{cat_article.article_body.striptags(0,130)}}... <strong><a href="{{cat_article.getUrl()}}">read more</a></strong></p>
					</div>
					{{end-each}}
				</div>
			</div>
		</div>
		
		<div class="col-1/3">
			{{include simple_blog-sidebar}}
		</div>
		
	</div>
</div>



