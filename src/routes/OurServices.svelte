<script>
	import GoButton from "../components/GoButton.svelte";
</script>

<section id="OurServices" class="service_section layout_padding">
	<div class="container">
		<div class="heading_container heading_center">
			<h2 class="section-title">Our Services</h2>
		</div>
		<div class="service_container">
			<div class="row">
				<div class="col-md-4">
					<div class="box b1">
						<div class="detail-box">
							<p class="title">System Requirement Analysis and Design</p>
							<p>
								We can create you integrated information systems. Providing SRS: Software Requirement
								Specifications (which role can which action) and SDS: Software Design Specifications
								(implementation details for each action, will modify which table, which 3rd party
								calls).
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box b2">
						<div class="detail-box">
							<p class="title">IT Infrastructure Setup</p>
							<p>
								We can design and implement fully documented architecture and infrastructure needed for
								your business growth. We can set you up the infrastructure, automatic scaling strategy,
								either on-premise or cloud.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box b3">
						<div class="detail-box">
							<p class="title">System Development</p>
							<p>
								For each SRS and SDS we can implement modular monolith or service-oriented microservices.
								Using latest technology, with maintainable and tested code, you get the full source
								code, so no vendor locking.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<GoButton target="#AboutUs"/>
	</div>
</section>

<style>

	.box {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
		-webkit-box-align: center;

		-ms-flex-align: center;
		align-items: center;
		text-align: center;
		margin: 60px auto 0;
		padding: 25px 25px 30px 25px;
		-webkit-box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
		box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
		border-radius: 10px;
	}

	.b2 {
		margin-top: 20px;
	}

	.box .detail-box p.title {
		font-weight: 600;
		color: #ff7241;
		font-size: 1.5em;
		padding-bottom: 1em;
	}

	.box .detail-box p {
		margin: 0;
	}

</style>
