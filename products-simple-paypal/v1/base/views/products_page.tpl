(** simple paypal products: products overview **)

<h1 itemprop="name">{{thispage.title}}</h1>
<div itemprop="description">{{thispage.description}}</div>

<div class="simple-product-list">
	<ul>
	{{each simple_product as prod sort by prod.sort}}
		<li itemscope="" itemtype="http://schema.org/Product" style="left-style:none" onclick="window.location='{{prod.getUrl()}}'">
			<div class="z-row">
				<img src="{{prod.main_image.getImage(150,150,crop)}}" alt="{{prod.title}}" align="left" style="margin-right:10px" />
				<h3 itemprop="name">{{prod.product_title}}</h3>
				<p  itemprop="description">{{prod.product_description.striptags(0,200)}}..</p>
				<a  itemprop="url" href="{{prod.getUrl()}}" title="Open {{prod.product_title}} Product Page">View {{prod.title}}</a>
			</div>
		</li>
	{{end-each}}
	</ul>
</div>


