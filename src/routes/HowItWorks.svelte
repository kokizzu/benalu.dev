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
						Send us email, and lets do video call so we can collect what are the requirements, what problems
						you want us to solve, and we can create the timeline and our breakdown estimate.
					</p>
					<p class="text-left">
						We are currently developing our in-house analytics, logging, monitoring, and payment platform.
					</p>
					<GoButton target="#OurTechs" />
				</div>
			</div>
			<div class="col-md-6 ">
				<div class="img-box">
					<img
						src="https://tutorbees.net/assets/subjects/Intro%20Web%20Programming-0d06d8a22f127effbb09695bb483b66275be102f86f144504e54aa187c891497.svg"
						style="height: 40% !important; width:70%; padding: 2em"
						alt="How it works"
					/>
					<div class="play_btn">
						<button>
							<i class="fa fa-play" aria-hidden="true"/>
						</button>
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

</style>
