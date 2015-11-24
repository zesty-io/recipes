(** recipe: blog > main authors page view **)
<div class="blog recipe-wrap">	
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		
		<div class="col-2/3">
			<div class="blog-wrap">
				<p>{{thispage.description}}</p>
				<hr />
				<div class="authors">
					
					{{each blog_author as author sort by author.name asc}}
					<div class="author">
						<h5>
							<span>
								<a href="{{author.getUrl()}}" title="Posts by {{author.name}}" rel="author">
									{{author.name}}
								</a>
							</span>
						</h5>
						
						<a href="{{author.getUrl()}}">View Articles written by {{author.name}}</a>
						
					</div>	
					
					
					{{end-each}}
					
				</div>
			</div>	
		</div>
		
		<div class="col-1/3">
			{{include blog-sidebar}}
		</div>
	</div>
</div>



