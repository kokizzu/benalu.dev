<script>
  import Home from "./routes/Home.svelte"
  import Header from "./components/Header.svelte";
  import Footer from "./components/Footer.svelte";
</script>

<main class="nev-nev">
  <Header />
  <Home />
  <Footer />
</main>

<style>
  main {
    padding: 1em;
    max-width: 330px;
    margin: 0 auto;
  }
  .nev-nev {
    max-width: none !important;
  }

  @media (min-width: 640px) {
    main {
      max-width: none;
    }
  }
</style>
