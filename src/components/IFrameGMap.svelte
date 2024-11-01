<script>
  import { onMount } from "svelte";

  export let name = /** @type {string} */ ('');
  export let link = /** @type {string} */ ('');

  let mapContainer = /** @type {HTMLDivElement} */ (null);

  function initMap() {
    mapContainer.innerHTML = "";

    const mapWrapper = document.createElement("div");
    mapWrapper.id = "google-map";
    mapWrapper.classList.add("map");

    mapContainer.appendChild(mapWrapper);

    const iframeElm = document.createElement("iframe");
    iframeElm.width = "100%";
    iframeElm.height = "100%";
    iframeElm.style.border = "0";
    iframeElm.src = link;
    iframeElm.allowFullscreen = true;
    iframeElm.loading = "lazy";
    iframeElm.title = name;
    
    mapWrapper.appendChild(iframeElm);
  }

  const observer = new IntersectionObserver((entries, observer) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        initMap();
        observer.disconnect();
      }
    });
  });

  onMount(() => {
    observer.observe(mapContainer);
  })
</script>

<div class="map-container" bind:this={mapContainer}>
</div>

<style>
   .map-container {
    border-radius: 10px;
    overflow: hidden;
    height: fit-content;
  }

  :global(.map-container .map) {
    height: 230px;
    width: 100%;
  }
</style>