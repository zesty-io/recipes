(** simple paypal products: product pageset view **)

<div class="breadcrumbs">
	{{breadcrumbs}}
</div>
<div class="product" itemscope="" itemtype="http://schema.org/Product">
	<div class="z-row">
		<div class="col-3/5">
			<div class="product-images">
				<img itemprop="image" src="{{thispage.main_image.getImage(800)}}" alt="{{thispage.name}}" />
			</div>
		</div>
		<div class="col-2/5">
			<div class="overview">
				<h1>
					<span itemprop="name">{{thispage.product_title}}</span> 
					<span style="float:Right" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
						$<span itemprop="price">{{thispage.price}}</span> 
						<link itemprop="availability" href="http://schema.org/InStock" />
					</span>
				</h1>
				<h6>
					<span itemprop="brand manufacturer" >{{thispage.brand}}</span> / <span itemprop="sku">{{thispage.sku}}</span> 
					<span style="float:Right">Shipping ${{thispage.shipping_cost}}</span>
				</h6>
				<div itemprop="description">{{thispage.product_description}}</div>
			</div>
			<h6>Purchase Options</h6>
			<div class="buy-options" style="max-width: 200px">
				{{paypalstandard(buy,{thispage.product_title},{thispage.price},{thispage.shipping_cost})}}			
			</div>
		</div>
		
		
	</div>
</div>
	


