<script>
import GoButton from "../components/GoButton.svelte";
</script>

<section id="Home" class="slider_section ">
	<div class="container ">
		<div class="row">
			<div class="col-md-6 ">
				<div class="detail-box">
					<h1>
						Development team <br/>
						You can trust
					</h1>
					<p class="text-white text-left">
						Nalu means wave/surf in Hawaiian.
					</p>
					<GoButton target="#OurServices" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="img-box-Header">
					<img
						src="https://tutorbees.net/assets/new_ui/sub-1.svg"
						title="New image"
						alt="Sub 1"
						class="Slider-Image"
					/>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	#Home {
		padding-top: 12em;
		background: black;
	}

	.slider_section {
		-webkit-box-flex: 1;
		-ms-flex: 1;
		flex: 1;
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
		position: relative;
		padding: 45px 0 90px 0;
	}

	.slider_section .row {
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}

	.slider_section .container {
		padding: 0 25px;
	}

	.slider_section .detail-box {
		color: #344d77;
	}

	.slider_section .detail-box h1 {
		font-weight: bold;
		text-transform: uppercase;
		margin-bottom: 15px;
		color: #ffffff;
		text-align: left !important;
	}
	.slider_section .img-box img {
		width: 100%;
	}

</style>
