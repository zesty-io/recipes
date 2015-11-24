(** recipe: simple blog > sidebar snippet **)
<div class="side-bar">
	
	<div class="widget">
		<h5><a href="{{simple_blog_main_page.first().getUrl()}}">Blog</a></h5>
		<ul>
			<li><a href="{{simple_blog_main_page.first().getUrl()}}">Articles</a></li>
			<li><a href="{{simple_blog_categories_page.first().getUrl()}}">Categories</a></li>
			<li><a href="{{simple_blog_article.getFeedUrl()}}" target="_blank">RSS Feed</a></li>			
		</ul>
	</div>(** end of widget **)
	
	<div class="widget">
		<h5><a href="{{simple_blog_main_page.first().getUrl()}}">Recent Articles</a></h5>
		<ul class="recent-articles" itemscope="" itemtype="http://www.schema.org/Blog">
			
			{{each simple_blog_article as recentarticle limit {recipe.recent_articles_limit} sort by recentarticle.date desc}}
			
			<li onclick="window.location='{{recentarticle.getUrl()}}';">
				<article itemprop="blogPosts" itemscope="" itemtype="http://www.schema.org/BlogPosting">
					<strong><a href="{{recentarticle.getUrl()}}" itemprop="url"><span itemprop="name headline">{{recentarticle.title}}</span></a></strong> posted on {{recentarticle.date.date(M jS Y)}}
					<p itemprop="alternativeHeadline">{{recentarticle.sub_title}}</p>
				</article>
			</li>
			
			{{end-each}}
			
		</ul>
	</div>(** end of widget **)
	
	<div class="widget">
		<h5><a href="{{simple_blog_categories_page.first().getUrl()}}">{{simple_blog_categories_page.first().seo_link_title}}</a></h5>
		<ul class="side-categories">
			{{each simple_blog_category as cat limit {recipe.category_limit} sort by cat.name asc}}
			<li>
				<a href="{{cat.getUrl()}}">{{cat.name}}</a>		
			</li>
			{{if {index} == {recipe.category_limit} }}
			<li>
				<a href="{{simple_blog_categories_page.first().getUrl()}}">View all Categories</a>		
			</li>
			{{end-if}}
			
			{{end-each}}
		</ul>
	</div>(** end of widget **)
	
</div>


