(** recipe: gallery > main page **)
<div class="gallery-page recipe-wrap" itemscope="" itemtype="http://www.schema.org/ImageGallery">
	
	<h1 itemprop="name headline">{{thispage.title}}</h1>
	
	<div class="z-row">
		
		<div class="gallery-wrap">
			<div itemprop="text description">{{thispage.content}}</div>
			
			<div class="z-row">
			
				{{each gallery_image as gim sort by gim.sort asc}}
				<div class="col-1/5" itemscope="" itemtype="http://www.schema.org/MediaObject">
					<a class="magnific" href="{{gim.image.getImage()}}" title="{{gim.description}}" itemprop="name url">
						<img src="{{gim.image.getImage(220,220,crop)}}" itemprop="image" />
					</a>
				</div>
				{{end-each}}
				
			</div>
		</div>
	</div>
</div>

(** javascript code to initialize magnific image popup **)
<script type="text/javascript">
	$(function() {
		$('.magnific').magnificPopup({
			type:'image',
			gallery: {
				enabled: true
			}
		});
	});
</script>



