<script>
import GoButton from "../components/GoButton.svelte";
</script>

<section id="WhyUs" class="why_section layout_padding">
	<div class="container">
		<div class="heading_container heading_center">
			<h2 class="section-title">Why Choose Us</h2>
		</div>
		<div class="why_container">
			<div class="row">
				<div class="col-md-4">
					<div class="box b1">
						<div class="detail-box">
							<h5>Latest Best-Fit Technology</h5>
							<p>
								We choose best fitting tech-stack, that are perfect fit for your use case, unlike other
								software house that using generalized tech-stack to solve everything. We do not conform
								to the popular/hyped tech (ReactJS, Kubernetes, PHP, Rust, RoR, etc), that are mostly
								will be bad in terms of operational cost or maintainability (developer's productivity)
								or performance and scalability.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box b2">
						<div class="detail-box">
							<h5>Flexible Pricing</h5>
							<p>
								You can hire us by man-hour, or lump-sump project-based. We only outsource the UI/UX and
								Graphics Design when necessary (and it would be transparent), all other development and
								architecture all will be fully implemented by our internal team (we are so proud on our
								own code quality, so we won't trust it to other party). We also provide training for
								your own developer team for further in-house development, so you won't get locked with
								us.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="box b3">
						<div class="detail-box">
							<h5>Experienced Developers</h5>
							<p>
								Our team consist of experienced developers with 4-13 years of experience in software
								development and Information Technology, most projects we've done are in e-commerce,
								insurance, education, multimedia, and infrastructure sector. We use the most make-sense
								practice, in terms of maintainability and performance (because best-practice for one
								company doesn't always best for other company).
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<GoButton target="#HowItWorks" />
	</div>
</section>

<style>


	.why_section .box {
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
		margin: 0 auto;
		margin-top: 90px;
		padding: 25px 25px 30px 25px;
		-webkit-box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
		box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.25);
		border-radius: 10px;
	}

	.why_section .box.b2 {
		margin-top: 45px;
	}

	.why_section .box .img-box {
		min-width: 90px;
		min-height: 90px;
		max-width: 90px;
		margin-bottom: 20px;
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		justify-content: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
		border-radius: 100%;
		background-color: #ffffff;
	}

	.why_section .box .img-box img {
		width: 45px;
	}

	.why_section .box .detail-box h5 {
		font-weight: 600;
		color: #ff7241;
	}

	.why_section .box .detail-box p {
		margin: 0;
	}
</style>
