

	<!-- Main -->
	<section id="main" class="container 75%">
		<header>
			<h2>{{page.title}}</h2>
			<h3>{{page.subtitle}}</h3>
			<hr>
			<div class="row uniform 50%">
				<div class="9u 12u(mobilep)">
					<p>{{page.content}}</p>
				</div>
				<div class="3u 12u(mobilep)">
					<img style="max-width:100%;padding:30px 20px 0"src="{{page.image.getImage()}}"/>
				</div>
			</div>
		</header>
		<div class="box">
			<form method="post" action="/thank-you" >
				<div class="row uniform 50%">
					<div class="12u">
						<div class="select-wrapper">
							<select>
								<option selected disabled > Parent Title </option>
								<option> Dr. </option>
								<option> Miss. </option>
								<option> Mr. </option>
								<option> Mrs. </option>
								<option> Ms. </option>
								<option> R. </option>
								<option> Rev. </option>
							</select>
						</div>
					</div>
				</div>
				<div class="row uniform 50%">
					<div class="12u">
						<input type="text" name="parentFirst" id="parentFirst" value="" placeholder="Parent First Name" />
					</div>
					<div class="12u">
						<input type="text" name="parentLast" id="parentLast" value="" placeholder="Parent Last Name" />
					</div>
					<div class="12u">
						<input type="email" name="parentEmail" id="parentEmail" value="" placeholder="Parent Email" />
					</div>
				</div>
				<hr>
				<div class="row uniform 50%">
					<div class="12u">
						<input type="email" name="studentEmail" id="studentEmail" value="" placeholder="Your Email" />
					</div>
				</div>
				<div class="row uniform 50%">
					<h4>Your other information</h4>
					<div class="12u">
						<div class="editable">
							Address
							<button type="button" id="edit"><i class="fas fa-edit"></i></button>
							<div id="myP">
							<p>
								711-2880 Nulla St.</p>
								<p>Mankato Mississippi 96522
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row uniform">
					<div class="12u align-center">
						<button type="submit" class="button special">Submit</button>
					</div>
				</div>
			</form>

<!-- Scripts -->
<script>
	$('#edit').click(function(){
		$('#myP').attr('contenteditable','true');
		$("#myP").addClass("edit-this");
	})

function getQueryVariable(variable)
{
       var query = window.location.search.substring(1);
       var vars = query.split("&");
       for (var i=0;i<vars.length;i++) {
               var pair = vars[i].split("=");
               if(pair[0] == variable){return pair[1];}
       }
       return(false);
}
	</script>
		</div>
	</section>
