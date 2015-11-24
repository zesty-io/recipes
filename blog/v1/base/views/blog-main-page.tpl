(** recipe: blog > main page view **)
<div class="blog recipe-wrap">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">
				<div itemprop="text description">{{thispage.description}}</div>
				
				<h5 class="title-line">{{recipe.main_page_article_text}}</h5>
				<ul class="article-listing" itemscope="" itemtype="http://www.schema.org/Blog">
					{{if {get_var.p} }}
					{{$paginate = {get_var.p} }}
					{{else}}
					{{$paginate = 0}}
					{{end-if}}
					{{each blog_article as post sort by date DESC limit {$paginate}, {recipe.main_page_limit} }}
					
					<li>
						<article itemprop="blogPosts" itemscope="" itemtype="http://www.schema.org/BlogPosting">
							<h4 itemprop="name headline">{{post.title}}</h4>
							<h6 itemprop="alternativeHeadline">{{post.sub_title}}</h6>	
							<p itemprop="description text">{{post.article_body.striptags(0,220)}}... <a href="{{post.getUrl()}}" itemprop="url">read more</a></p>
						</article>
					</li>
					{{ $count = {index} }}
					{{end-each}}
				</ul>
				<div class="z-row">
					<div class="col-1/2">
						<div class="blog-last">
							{{if {$paginate} != 0 }}
							<a class="button" href="{{thispage.getUrl()}}?p={{eval({$paginate} - {recipe.main_page_limit})}}">Previous {{recipe.main_page_limit}} Articles</a>
							{{end-if}}
							&nbsp;
						</div>
					</div>
					<div class="col-1/2">
						<div class="blog-next">
							&nbsp;
							{{if {$count} == {recipe.main_page_limit} }}
							<a class="button" href="{{thispage.getUrl()}}?p={{eval({$paginate} + {recipe.main_page_limit})}}">Next {{recipe.main_page_limit}} Articles</a>
							{{end-if}}
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-1/3">
			{{include blog-sidebar}}
		</div>
	</div>
</div>


