<script>
	import Index from "./routes/Index.svelte"
	import Header from "./components/Header.svelte";
	import Footer from "./components/Footer.svelte";
</script>

<main class="nev-nev">
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

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>
