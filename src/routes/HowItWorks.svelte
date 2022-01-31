<script>
	import GoButton from "../components/GoButton.svelte";
</script>

<section id="HowItWorks" class="about_section">
	<div class="container  my-5">
		<div class="row">
			<div class="col-md-6">
				<div class="detail-box text-left">
					<div class="heading_container">
						<h2 class="section-title">How It Works</h2>
					</div>
					<p class="text-left">
						Send us <a class="link" href="mailto:admin@benalu.dev">email</a>, and lets do video call so we can
						collect what are the requirements, what problems
						you want us to solve, and we can create the timeline and our breakdown estimate.
					</p>
					<p class="text-left">
						We are currently developing our in-house analytics, logging, monitoring, and payment platform.
					</p>
					<GoButton target="#OurTechs"/>
				</div>
			</div>
			<div class="col-md-6 ">
				<div class="img-box">
					<img
						src="/how-it-works.svg"
						style="height: 40% !important; width:70%; padding: 2em"
						alt="How it works"
					/>
					<div class="play_btn">
						<i class="fa fa-play" aria-hidden="true"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	#HowItWorks {
		background: black;
	}

	a.link {

	}


	.row {
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
	}

	.img-box {
		position: relative;
	}

	.img-box img {
		width: 100%;
	}

	.img-box .play_btn {
		position: absolute;
		top: 50%;
		left: 50%;
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-align: center;
		-ms-flex-align: center;
		align-items: center;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		justify-content: center;
		width: 65px;
		height: 65px;
		-webkit-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
		border: none;
	}

	.img-box .play_btn:before,
	.img-box .play_btn:after {
		content: "";
		width: 100%;
		height: 100%;
		position: absolute;
		top: 50%;
		left: 50%;
		background-color: #ff7241;
		opacity: 1;
		border-radius: 100%;
		-webkit-transform: translate(-50%, -50%);
		transform: translate(-50%, -50%);
	}

	.img-box .play_btn:before {
		z-index: 2;
		-webkit-animation: before-animation 1500ms infinite;
		animation: before-animation 1500ms infinite;
	}

	.img-box .play_btn:after {
		z-index: 1;
		-webkit-animation: after-animation 1500ms infinite;
		animation: after-animation 1500ms infinite;
	}

</style>
