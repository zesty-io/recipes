(** recipe: blog > tag page view **)
<div class="blog recipe-wrap" itemscope="" itemtype="http://www.schema.org/Blog">

	<h1>Article's tagged as "{{thispage.name}}"</h1>

	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">
				<hr/>
				<ul class="article-listing">
					{{if {get_var.p} }}
					{{$paginate = {get_var.p} }}
					{{else}}
					{{$paginate = 0}}
					{{end-if}}
					{{each blog_article as article where FIND_IN_SET({thispage.zid}, article.tags) sort by article.date DESC limit {$paginate}, {recipe.main_page_limit} }}
					
					<li>
						<article itemprop="blogPosts" itemscope="" itemtype="http://www.schema.org/BlogPosting">
							<h5 itemprop="name headline">{{article.title}}</h5>
							<h6 itemprop="alternativeHeadline">{{article.sub_title}}</h6>	
							<p itemprop="description">{{article.article_body.striptags(0,130)}}... <a href="{{article.getUrl()}}" itemprop="url">read more</a></p>
						</article>
					</li>
					
					{{end-each}}
				</ul>
				<div class="z-row">
					<div class="col-1/2">
						<div class="blog-last">
							{{if {$paginate} != 0 }}
							<a class="button" href="{{thispage.getUrl()}}?p={{eval({$paginate} - {recipe.main_page_limit})}}">Previous {{recipe.main_page_limit}}</a>
							{{end-if}}
							&nbsp;
						</div>
					</div>
					<div class="col-1/2">
						<div class="blog-next">
							&nbsp;
							{{if {$count} == {recipe.main_page_limit} }}
							<a class="button" href="{{thispage.getUrl()}}?p={{eval({$paginate} + {recipe.main_page_limit})}}">Next {{recipe.main_page_limit}}</a>
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
</div>(** end of blog **)