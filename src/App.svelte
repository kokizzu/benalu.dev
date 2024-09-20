<script>
	import Index from "./routes/Index.svelte"
	import Header from "./components/Header.svelte";
	import Footer from "./components/Footer.svelte";
  import { onMount } from "svelte";
	import { Icon } from "svelte-icons-pack";
	import { LuArrowDown } from "../node_modules/svelte-icons-pack/dist/lu";

	let isShowArrowBtn = false;
	onMount(() => {
		window.addEventListener('scroll', () => {
			if (window.scrollY > 0) {
				isShowArrowBtn = true;
			} else {
				isShowArrowBtn = false;
			}
		});

		window.addEventListener('scrollend', () => {
			setTimeout(() => isShowArrowBtn = false, 2000);
		})
	});
</script>

<main class="nev-nev">
	{#if isShowArrowBtn}
		<div class="go-to-bottom-container">
			<a href="#BoardingHouses" class="go-to-bottom">
				<Icon
					size="22"
					color="#FFF"
					src={LuArrowDown}
				/>
				<div class="text">
					<span class="title">For perspective tenant</span>
					<span class="subtitle">(untuk pencari kost)</span>
				</div>
			</a>
		</div>
	{/if}
	<Header/>
	<Index/>
	<Footer/>
</main>

<style>
	main {
		padding: 1em;
		max-width: 330px;
		margin: 0 auto;
	}

	.nev-nev {
		max-width: none !important;
		padding-bottom: 0;
	}

	.go-to-bottom-container {
		position: fixed;
		right: 0;
		left: 0;
		bottom: 20px;
		z-index: 100;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.go-to-bottom {
		width: fit-content;
		background-color: #ff7241;
		padding: 10px 25px;
		border-radius: 16px;
		display: flex;
		justify-content: center;
		align-items: center;
		gap: 10px;
		flex-direction: row;
	}

	.go-to-bottom:hover {
		background-color: #f43f00;
	}

	.go-to-bottom .text {
		display: flex;
		flex-direction: column;
		gap: 0;
		color: #fff;
		font-weight: bold;
		font-style: italic;
	}

	.go-to-bottom .text .subtitle {
		font-size: 12px;
		margin-top: -2px;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
