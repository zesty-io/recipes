(** recipe: simple blog > single article view **)
<div class="simple-blog recipe-wrap" itemscope="" itemtype="http://schema.org/BlogPosting">
	
	<h1 itemprop="name headline">
		<a href="{{thispage.getUrl()}}" title="{{thispage.title}}" itemprop="url">{{thispage.title}}</a>
	</h1>
	<div class="z-row">
		
		<div class="col-2/3">
			<div class="blog-wrap">	
				
				<article class="blog-article">
					
					<header class="article-header">
						<hgroup class="hgroup">
							
							<h2 itemprop="alternativeHeadline">{{thispage.sub_title}}</h2>
							<h3>
								Posted on <timestamp pubdate="" itemprop="datePublished" datetime="{{ thispage.date.date(Y-m-d) }}">{{ thispage.date.date(Y-m-d) }}</timestamp>
							</h3>
						</hgroup>
					</header>
					
					<div class="article-body">
						{{ if {thispage.image} > 0 }}
						<img src="{{thispage.image.getImage(260,,fit)}}" align="left" alt="{{thispage.article}} Image" />
						{{end-if}}
						<div>{{thispage.article_body}}</div>
					</div>
					
					
					<footer class="article-footer"> 
						<a class="permalink" href="{{thispage.getUrl()}}" title="{{thispage.article}}">Permalink</a>
						<div class="blog-social"></div>	
					</footer>
					
				</article>
				<div class="article-comments">
					{{include garnish-disqus-commenting}}
				</div>  
			</div>
		</div>
		
		<div class="col-1/3">
			(** side bar **)
			{{include simple_blog-sidebar}}
		</div>
	</div>
</div>



