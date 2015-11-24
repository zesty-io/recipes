(** recipe: blog > single author view **)
<div class="blog recipe-wrap" itemscope="" itemtype="http://schema.org/Person">

	<h1 itemprop="name">{{thispage.name}}</h1>

	<div class="z-row" itemscope="" itemtype="http://schema.org/Person">
	
		<div class="col-2/3">
			<div class="blog-wrap">
				<div class="author-profile">
					<div class="z-row">
						<div class="author-picture col-1/3">
							<img src="{{thispage.image.getImage(250,,fit)}}" alt="{{thispage.name}} profile picture" class="author-photo" itemprop="image" />
						</div>
						
						<div class="author-bio col-2/3">
							<p itemprop="description">{{thispage.description}}</p>
						</div>
						x
					</div>
					<div class="z-row">
						<h5 class="title-line">Articles posted by <span rel="author">{{thispage.name}}</span></h5>
						
						<ul class="other-articles-by-author" itemscope="" itemtype="http://schema.org/Blog">
							{{each blog_article as articlefromauthor where articlefromauthor.author = {thispage.zid} limit 100 sort by date}}
							<li onclick="window.location='{{articlefromauthor.getUrl()}}';" itemprop="blogPosts" itemscope="" itemtype="http://schema.org/BlogPosting">
								<strong><a href="{{articlefromauthor.getUrl()}}" itemprop="url"><span itemprop="name headline">{{articlefromauthor.title}}</span></a></strong>
								<p itemprop="alternativeHeadline">{{articlefromauthor.sub_title}}</p>
								
							</li>
							{{end-each}}	
						</ul>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="col-1/3">
			{{include blog-sidebar}}
		</div>
	</div>
</div>	
	
	

	