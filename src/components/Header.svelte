<script>
	let navWidth = 0;
	const openNav = () => {
		navWidth = 100;
	};
	const closeNav = () => {
		navWidth = 0;
	};
</script>

<div class="hero_area" id="Top">
	<div class="hero_bg_box" style="height: 5em"></div>

	<header class="header_section">
		<div class="container">
			<nav class="navbar navbar-expand-lg custom_nav-container ">
				<a
					class="navbar-brand  text-white d-flex align-items-center"
					href="#Home"
				>
					<!-- https://blogger.googleusercontent.com/img/a/AVvXsEi-JWOvGCAdYsg0KcLYS5CNEfcD79S9vZVWRVDnEvdxU9Tr92Ki5Br-y6vQbpfxGahewNkPTS47EXlPkv7inyfTMXStSrrU_on-rnsCd-hAUr3XdyopommFUvaTpYFj33qtA2WsOyb8u9cflCBAoOHBSYfIIXVZeeQwmmAMAeQ1FmKMopvQemaJfNiEXA=s1200 -->
					<img width="80" height="80"
						  src="/benalu.dev.png"
						  alt="User"
						  class="LogoImage "
					/>
					<b class="ms-2">BeNalu Dev</b>
				</a>

				<button class="navbar-toggler" aria-label="menu" type="button" on:click={openNav}>
					<span class=""/>
				</button>

				<div
					class="collapse navbar-collapse HeaderPosition"
					id="navbarSupportedContent"
				>
					<ul class="navbar-nav  " style="margin-top: 0px;">
						<li class="nav-item active">
							<a class="nav-link" href="#Home">Home </a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#OurServices">Services</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#AboutUs"> About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#ContactUs">Contact Us</a>
						</li>
						<!-- svelte-ignore a11y-click-events-have-key-events -->
						<li class="nav-item" on:click={openNav}>
							<button class="nav-link bar-toggler"
							>
								<svg
									xmlns="http://www.w3.org/2000/svg"
									width="26"
									height="26"
									fill="currentColor"
									class="bi bi-list"
									viewBox="0 0 16 16"
								>
									<path
										fill-rule="evenodd"
										d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"
									/>
								</svg>
							</button>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>

	<div class="sidenav" id="mySidenav" style="width: {navWidth}%">
		<div class="offcanvas-body">
			<div class="w-100 d-flex">
				<div class="flex-fill justify-content-end">
					<button on:click={closeNav} aria-label='menu' class="closeNavbar float-end"
					>Close
					</button
					>
				</div>
			</div>
			<ul>
				<li class="nav-item active offcanvas-body-li">
					<a class="nav-link text-white" href="#Home">Home </a>
				</li>

				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#OurServices">Services</a>
				</li>
				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#AboutUs">About</a>
				</li>
				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#WhyUs">Why Us</a>
				</li>
				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#HowItWorks">How It Works</a>
				</li>
				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#HowItWorks">Our Technologies</a>
				</li>
				<li class="nav-item offcanvas-body-li">
					<a class="nav-link text-white" href="#ContactUs">Contact Us</a>
				</li>
			</ul>
		</div>
	</div>
</div>

<style>
	#Top {
		position: fixed;
		top: 0;
		left: 2em;
		z-index: 100;
		width: 100%;
	}

	.offcanvas-body {
		background: #040126;
	}

	.offcanvas-body-li {
		color: orange !important;
		list-style: none !important;
	}

	.closeNavbar {
		display: flex;
		float: right;
		justify-content: end;
		margin: 1rem 0rem;
		border-radius: 16px;
		padding: 16px 34px;
		border: 0px;
		background: #ff7241;
		color: white;
		font-weight: bold;
		font-size: 110%;
	}

	.HeaderPosition {
		position: sticky;
	}

	.bar-toggler {
		background-color: transparent;
		border: 0px !important;
	}

	.hero_bg_box::before {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-color: #040126 !important;
	}

	/* side bar */
	.sidenav {
		height: 100vh !important;
		width: 0;
		position: fixed;
		z-index: 1;
		top: 0;
		right: 0;
		overflow-x: hidden;
		padding-top: 0px;
	}

	.nav-item:hover {
		background-color: #ff7241;
		color: white !important;
	}

	li.nav-item, a.nav-link {
		border-radius: 16px;
		font-weight: bold;
	}

	.LogoImage {
		width: 80px;
	}

	/*header section*/
	.hero_area {
		position: relative;

		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-ms-flex-direction: column;
		flex-direction: column;
	}

	.hero_bg_box {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		overflow: hidden;
		z-index: -1;
	}

	.header_section {
		padding: 15px 0;
	}

	.navbar-brand {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
	}

	.custom_nav-container {
		color: white;
		padding: 0 4em 0 0;
	}

	.custom_nav-container .navbar-nav {
		margin-left: auto;
	}

	.custom_nav-container .navbar-nav .nav-item .nav-link {
		padding: 5px 20px;
		color: #ffffff;
		text-align: center;
		text-transform: uppercase;
		border-radius: 5px;
	}

	.custom_nav-container .navbar-nav .nav-item:hover .nav-link,
	.custom_nav-container .navbar-nav .nav-item.active .nav-link {
		color: white !important;
	}

	.custom_nav-container .navbar-toggler {
		outline: none;
	}

	.custom_nav-container .navbar-toggler {
		padding: 0;
		width: 37px;
		height: 42px;
	}

	.custom_nav-container .navbar-toggler span {
		display: block;
		width: 35px;
		height: 4px;
		background-color: #ffffff;
		margin: 7px 0;

		position: relative;
		border-radius: 5px;
	}

	.custom_nav-container .navbar-toggler span::before,
	.custom_nav-container .navbar-toggler span::after {
		content: "";
		position: absolute;
		left: 0;
		height: 100%;
		width: 100%;
		background-color: #ffffff;
		top: -10px;
		border-radius: 5px;
	}

	.custom_nav-container .navbar-toggler span::after {
		top: 10px;
	}

	.custom_nav-container .navbar-toggler[aria-expanded="true"] span {
		-webkit-transform: rotate(45deg);
		transform: rotate(45deg);
	}

	.custom_nav-container .navbar-toggler[aria-expanded="true"] span::before,
	.custom_nav-container .navbar-toggler[aria-expanded="true"] span::after {
		-webkit-transform: rotate(90deg);
		transform: rotate(90deg);
		top: 0;
	}

	@media only screen and (max-width : 768px) {
		.hero_bg_box {
			top: 0;
			left: 0;
			right: 0;
			width: 100%;
			position: fixed;
		}

		.hero_bg_box::before {
			content: "";
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background-color: #040126 !important;
		}
	}
</style>
