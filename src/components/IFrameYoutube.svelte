
<script>
  import { onMount } from "svelte";

  export let link = /** @type {string} */ ('');

  let ytContainer = /** @type {HTMLDivElement} */ (null);

  function initYouTube() {
    const iframeElm = document.createElement("iframe");
    iframeElm.width = "100%";
    iframeElm.height = "100%";
    iframeElm.style.border = "0";
    iframeElm.src = link;
    iframeElm.allowFullscreen = true;
    iframeElm.loading = "lazy";
    iframeElm.title = "YouTube video player";
    iframeElm.allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share";
    iframeElm.referrerPolicy = "strict-origin-when-cross-origin";
    iframeElm.classList.add("youtube-iframe");
    iframeElm.allowFullscreen = true;
    
    ytContainer.appendChild(iframeElm);
  }

  const observer = new IntersectionObserver((entries, observer) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        initYouTube();
        observer.disconnect();
      }
    });
  });

  onMount(() => {
    observer.observe(ytContainer);
  })
</script>

<div class="youtube-container" bind:this={ytContainer}>
</div>

<style>
  .youtube-container {
    width: 100%;
    height: 315px;
    border-radius: 10px;
    overflow: hidden;
  }

  :global(.youtube-iframe) {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  @media only screen and (max-width : 768px) {
    :global(.youtube-iframe) {
      height: 200px;
    }
  }
</style>