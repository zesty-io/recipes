(** recipe: simple blog > main page view **)
<div class="simple-blog recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">
				
				<div class="page-description">{{thispage.description}}</div>
				
				<h5 class="title-line">Recent Articles</h5>
				<div class="article-listing" itemscope="" itemtype="http://www.schema.org/Blog">
					{{each simple_blog_article as post sort by post.date DESC limit 20}}
					<div>
						<h3 itemprop="name headline">{{post.title}}</h3>
						<em itemprop="date">{{post.date.date(Y-m-d)}}</em>	
						<p itemprop="description text">{{post.article_body.striptags(0,220)}}... <strong><a href="{{post.getUrl()}}">read more</a></strong></p>
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



