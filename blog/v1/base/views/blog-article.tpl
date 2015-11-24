(** recipe: blog > single article view **)
<div class="blog recipe-wrap" itemscope="" itemtype="http://schema.org/BlogPosting">
	<h1 itemprop="name headline">
		<a href="{{thispage.getUrl()}}" title="{{thispage.title}}" itemprop="url">{{thispage.title}}</a>
	</h1>
	
	
	<div class="z-row">
		<div class="col-2/3">
			<div class="blog-wrap">	
				<article class="blog-article">
					<header class="article-header ">
						<hgroup class="hgroup">
							<h2 itemprop="alternativeHeadline">{{thispage.sub_title}}</h2>
							<h6>
								Posted on 
								<timestamp pubdate="" itemprop="datePublished" datetime="{{ thispage.date.date(Y-m-d) }}">
									{{ thispage.date.date(F \t\h\e jS, Y) }}
								</timestamp>
							</h6>
							<div class="top-social">
								<span class="st_plusone_large"></span>
							</div>
						</hgroup>
						
					</header>
					
					
					<div class="article-body">
						{{ if {thispage.image} > 0 }}
						<img src="{{thispage.image.getImage(400)}}" align="left" alt="{{thispage.article}} Image" itemprop="image" />
						{{end-if}}
						<div itemprop="articleBody text">{{thispage.article_body}}</div>
					</div>
					
					
					<footer class="article-footer"> 
						
						{{if {thispage.tags} > 0 }}
						<div class="tags">
							<strong>Tagged:</strong>
							{{each blog_tag as t where FIND_IN_SET(t.zid,'{thispage.tags}') }}
							<a itemprop="keywords" href="{{t.getUrl()}}" rel="tag">{{t.name}}</a>
							{{end-each}}
							
						</div>
						{{end-if}}
						
						
						{{include garnish-sharethis-buttons}}
					</footer>
					{{if {thispage.author} }}
					<aside class="author" rel="author" itemprop="author" itemscope="" itemtype="http://www.schema.org/Person">
						<img src="{{blog_author.filter(z.zid = {thispage.author}).image.getImage(300,300,crop)}}" 
						alt="{{blog_author.filter(z.zid = {thispage.author}).name}} profile picture" itemprop="image" />
						<div class="author-bio">
							<!-- author details-->
							<p>
								<strong>About the Author</strong><br>
								<a href="https://plus.google.com/{{blog_author.filter(z.zid = {thispage.author}).google_author_id}}?rel=author" 
								title="Posts by {{blog_author.filter(z.zid = {thispage.author}).name}}" 
								rel="author" itemprop="url">
									<span itemprop="name">{{blog_author.filter(z.zid = {thispage.author}).name}}</span>
								</a>
								<span itemprop="description">{{blog_author.filter(z.zid = {thispage.author}).description.striptags(0,5000)}}</span>
							</p>
							
							<p><!-- google plus author and publisher details -->
								<a href="https://plus.google.com/{{blog_author.filter(z.zid = {thispage.author}).google_author_id}}?rel=author">
									Add {{blog_author.filter(z.zid = {thispage.author}).name}} to your Circles
								</a> 
								{{if {clippings.google_publisher_id} }}
								and 
								<a href="https://plus.google.com/{{clippings.google_publisher_id}}" rel="publisher">
									{{clippings.site_name}} on Google+
								</a>
								{{end-if}}
							</p>
						</div>
					</aside>
					{{end-if}}
				</article>
				
				<div class="article-comments">
					{{include garnish-disqus-commenting}}
				</div>  
				
			</div>
		</div>	
		
		<div class="col-1/3">
			{{include blog-sidebar}}
		</div>
		
	</div>
	
	
</div>(** end of blog **)




