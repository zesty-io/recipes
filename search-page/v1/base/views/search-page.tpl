(** recipe: search > search view **)
(** you can write a form anywhere in your website that submits a text field name="q" using method="get" on your form to this page **)

<div class="search-page recipe-wrap">
	{{if {get_var.q} }}
	
	<h1 itemprop="name headline">{{thispage.searched_header}} "{{get_var.q}}"</h1>
	<hr/>
	{{site.searchFormatted({get_var.q}, {thispage.search_limit})}}

	{{else}}
	
	<h1 itemprop="name headline">{{thispage.search_header}}</h1>
	
	{{end-if}}
	<hr/>
	<form method="get">
		{{if {thispage.form_label} }}
		<label for="q">{{thispage.form_label}}</label>
		{{else}}
		<label for="q">Search {{clippings.site_name}}</label>
		{{end-if}}
		<input name="q" type="text" placeholder="Search Here" value="{{get_var.q}}" />				
		<input type="submit" value="{{thispage.button_text}}" />
	</form>
	
</div>



