<script>
  import PopUpBoardingHouse from "./PopUpBoardingHouse.svelte";

  /**
   * @typedef {Object} room
   * @property {string} name
   * @property {string} image_url
   * @property {string} size
   * @property {string} availableAt
   * @property {string[]} facilities
   * @property {string} youtube_url
   */
  export let name = /** @type {string} */ ('');
  export let facilities = /** @type {string[]} */ ([]);
  export let normalPrice = /** @type {number} */ (0);
  export let discountPrice = /** @type {number} */ (0);
  export let discountTerms = /** @type {string} */ ('');
  export let rooms = /** @type {room[]} */ ([]);
  export let mapLink = /** @type {string} */ ('');

  let popUpBoardingHouse;
  let roomNameToAsk = "";
</script>

<PopUpBoardingHouse
  bind:this={popUpBoardingHouse}
  HOUSE_NAME={name}
  bind:ROOM_NAME={roomNameToAsk}
/>

<div class="boarding-house">
  <div class="map_container">
    <div id="googleMap" class="map">
      <iframe
        width="100%" height="100%"
        src={mapLink} style="border:0;" allowfullscreen=""
        title="Location of {name}"
        loading="lazy"
      ></iframe>
    </div>
  </div>
  <div class="details">
    <p class="name">{name}</p>
    {#if facilities && facilities.length > 0}
      <div class="facilities">
        {#each (facilities || []) as facility}
          <span>{facility}</span>
        {/each}
      </div>
    {/if}
    <div class="price-container">
      <div class="price">
        {#if discountPrice > 0}
          <span class="discount">{
            new Intl.NumberFormat('id', {
              style: 'currency',
              currency: 'IDR',
              minimumFractionDigits: 0,
              maximumFractionDigits: 0
            }).format(Number(normalPrice))
          }</span>
        {/if}
        <span class="normal">{
          new Intl.NumberFormat('id', {
            style: 'currency',
            currency: 'IDR',
            minimumFractionDigits: 0,
            maximumFractionDigits: 0
          }).format(
            Number(discountPrice > 0 ? discountPrice : normalPrice)
          )
        }</span>
      </div>
      {#if discountPrice > 0}
        <p class="discount-terms">
          <span class="asterisk">*</span>
          {discountTerms}
        </p>
      {/if}
    </div>
    <div class="rooms">
      <h3 class="title">Rooms</h3>
      {#each (rooms || []) as room}
        <div class="room_container">
          <div class="main">
            <div class="image">
              <img
                src={room.image_url}
                on:error={() => room.image_url = '/placeholder-image.webp'}
                alt={room.name}
              />
            </div>
            <table class="room">
              <tbody>
                <tr>
                  <td class="key">Name</td>
                  <td class="value">: {room.name}</td>
                </tr>
                <tr>
                  <td class="key">Size</td>
                  <td class="value">: {room.size}</td>
                </tr>
                <tr>
                  <td class="key">Available at</td>
                  <td class="value">: {room.availableAt}</td>
                </tr>
                <tr>
                  <td class="key">Facilities</td>
                  <td class="value">: {room.facilities.join(', ')}</td>
                </tr>
              </tbody>
            </table>
          </div>
          {#if room.youtube_url}
            <div class="youtube">
              <iframe
                width="100%"
                height="315"
                src={room.youtube_url}
                title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                referrerpolicy="strict-origin-when-cross-origin"
                allowfullscreen
                class="youtube_iframe {room.youtube_url != '' ? '' : 'hidden'}"
              >
              </iframe>
            </div>
          {/if}
          <button class="btn" on:click={() => {
            roomNameToAsk = room.name;
            popUpBoardingHouse.Show()            
          }}>
            Ask
          </button>
        </div>
      {/each}
    </div>
  </div>
</div>

<style>
  .boarding-house {
    display: flex;
    flex-direction: column;
    background-color: #344d77;
    padding: 25px;
    border-radius: 15px;
    border: 1px solid #dddddd;
    gap: 10px;
  }

  .boarding-house .map_container {
    border-radius: 10px;
    overflow: hidden;
    height: fit-content;
  }

  .boarding-house .map_container .map {
    height: 230px;
    width: 100%;
  }

  .boarding-house .details {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }

  .boarding-house .details .name {
    font-weight: 600;
		color: orange;
		padding-bottom: 0.2em;
		font-size: 1.5em;
    margin: 0;
  }

  .boarding-house .details .facilities {
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    gap: 10px;
  }

  .boarding-house .details .facilities span {
    background-color: #ff7241;
    color: #ffffff;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: smaller;
  }

  .boarding-house .details .price {
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 10px;
  }

  .boarding-house .details .price-container {
    display: flex;
    flex-direction: column;
    gap: 2px;
  }

  .boarding-house .details .price-container .price .discount {
    text-decoration: line-through;
    margin: 0;
    color: #ccd5e2;
  }

  .boarding-house .details .price-container .price .normal {
    font-size: xx-large;
    font-weight: 600;
    margin: 0;
    color: var(--bs-green);
  }

  .boarding-house .details .price-container .discount-terms {
    margin: 0;
    font-size: smaller;
  }

  .boarding-house .details .price-container .discount-terms .asterisk {
    font-weight: 600;
    color: #ff7241;
  }

  .boarding-house .details .rooms {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }

  .boarding-house .details .rooms h3.title {
    margin: 0;
    font-weight: 600;
    color: #ffffff;
    font-size: large;
  }

  .boarding-house .details .rooms .room_container {
    display: flex;
    flex-direction: column;
    height: fit-content;
    width: 100%;
    position: relative;
    background-color: #293f63;
    padding: 10px;
    gap: 10px;
    border-radius: 10px;
  }

  .boarding-house .details .rooms .room_container .main {
    display: flex;
    height: fit-content;
    gap: 10px;
    flex-direction: row;
    width: 100%;
  }

  .boarding-house .details .rooms .room_container .main .image {
    height: 130px;
    width: 200px;
    border-radius: 8px;
    overflow: hidden;
  }

  .boarding-house .details .rooms .room_container .main .image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .boarding-house .details .rooms .room_container .main .room {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
  }

  .boarding-house .details .rooms .room_container .main .room .key {
    color: #ff7241;
    padding-right: 10px;
    width: 98px;
  }

  .boarding-house .details .rooms .room_container .btn {
    position: absolute;
    right: 10px;
    top: 10px;
    padding: 5px 10px;
    border-radius: 5px;
    border: none;
    background-color: #ff7241;
    color: #ffffff;
    cursor: pointer;
    font-size: small;
  }

  .boarding-house .details .rooms .room_container .btn:hover {
    background-color: #f5855f;
  }

  .boarding-house .details .rooms .room_container .youtube {
    border-radius: 10px;
    overflow: hidden;
  }

  .boarding-house .details .rooms .room_container .youtube .youtube_iframe {
    object-fit: cover;
  }

  .boarding-house .details .rooms .room_container .youtube .youtube_iframe.hidden {
    display: none !important;
  }

  @media only screen and (max-width : 768px) {
    .boarding-house {
      padding: 10px;
    }

    .boarding-house .details .rooms .room_container .main {
      flex-direction: column;
    }

    .boarding-house .details .rooms .room_container .main .image {
      height: 130px;
      width: 100%;
    }

    .boarding-house .details .rooms .room_container .youtube .youtube_iframe {
      height: 200px;
    }

    .boarding-house .details .rooms .room_container .btn {
      top: 15px;
      right: 15px;
    }

    .boarding-house .details .rooms .room_container .main .room tbody tr {
      display: flex;
      align-items: flex-start;
    }

    .boarding-house .details .rooms .room_container .main .room tbody tr .value {
      width: auto;
      flex-grow: 1;
    }
  }
</style>