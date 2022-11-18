<cfinclude template="/main/header.cfm" runonce="true" />

<cfoutput>
	<div class="text-center mx-auto mt-2 alert alert-primary alert-sm pl-5" id="WelcomeAlert">
		<h2>Welcome #SESSION.userFullName# !</h2>
	</div>
	<div class="row mb-5">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
			<div id="dashboard" class="carousel slide mt-3" data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="##dashboard" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="##dashboard" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="##dashboard" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<cfloop from="1" to="3" index="item">
						<div class="carousel-item <cfif item EQ 1>active</cfif>">
							<img src="../assets/images/carousel/carousel-#item#.png" class="dashboard-img d-block w-100" width="400" height="500">
						</div>
					</cfloop>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="##dashboard" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="##dashboard" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
</cfoutput>

<cfinclude template="/main/footer.cfm" runonce="true" />