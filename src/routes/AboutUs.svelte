<script>
	import GoButton from "../components/GoButton.svelte";
</script>

<section id="AboutUs" class="about_section">
	<div class="container  ">
		<div class="row">
			<div class="col-md-6 ">
				<div class="img-box">
					<img
						src="/about-us.svg"
						alt="About Us"
						width="100%"
						height="100%"
					/>
				</div>
			</div>
			<div class="col-md-6">
				<div class="detail-box">
					<div class="heading_container">
						<h2 class="section-title">About Us</h2>
					</div>
					<p class="text-left">
						We are a team of multi-cultured experienced developers and researchers that works for various
						startups,
						unicorns, and universities in Indonesia, United States, Japan, Singapore, and Thailand.
					</p>
					<ul>
						<li><a class="x" href="//linkedin.com/in/kokizzu/">Kiswono</a> | <a class="x"
																												  href="//github.com/kokizzu">GitHub</a>
						</li>
						<li><a class="x" href="//linkedin.com/in/rizalgowandy/">Rizal</a> | <a
							class="x" href="//github.com/rizalgowandy">GitHub</a></li>
						<li><a class="x" href="//linkedin.com/in/vincentius-michael-49b39182/">Michael</a>
						</li>
						<li><a class="x" href="//linkedin.com/in/dikaimin-simon/">Dikaimin</a></li>
					</ul>
					<GoButton target="#WhyUs"/>
				</div>
			</div>
		</div>
	</div>
</section>

<style>
	a.x, a.x:hover {
		color: rgb(71, 210, 120);
		border: none;
		background: none;
		padding: 0;
		font-weight: bold;
	}

	#AboutUs {
		background: black;
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

</style>
