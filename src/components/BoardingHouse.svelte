<script>
	import PopUpBoardingHouse from "./PopUpBoardingHouse.svelte";
	import PopUpImage from "./PopUpImage.svelte";
	import IFrameGMap from "./IFrameGMap.svelte";
	import IFrameYoutube from "./IFrameYoutube.svelte";

	/**
	 * @typedef {Object} room
	 * @property {string} name
	 * @property {string} image_url
	 * @property {string} size
	 * @property {string} availableAt
	 * @property {number} normalPrice
	 * @property {number} discountPrice
	 * @property {string} discountTerms
	 * @property {string[]} facilities
	 * @property {string} youtube_url
	 */
	export let name = /** @type {string} */ ('');
	export let facilities = /** @type {string[]} */ ([]);
	export let rooms = /** @type {room[]} */ ([]);
	export let mapLink = /** @type {string} */ ('');

	let popUpBoardingHouse = PopUpBoardingHouse;
	let roomNameToAsk = "";

	/**
	 * Renders availability format of boarding house
	 * @param dateString {string}
	 * @returns {string}
	 */
	function renderAvailability(dateString) {
		const targetDate = new Date(dateString);
		const today = new Date();

		today.setHours(0, 0, 0, 0);
		targetDate.setHours(0, 0, 0, 0);

		const diffTime = targetDate - today;
		const diffDays = Math.round(diffTime / (1000 * 60 * 60 * 24));

		//`${Math.abs(diffDays)} days ago`;
		if (diffDays > 0) {
			if (diffDays <= 1) {
				return `<b>TOMORROW</b>`
			}
			return `available in <b>${diffDays} days</b> if building completed or current tenant doesn't extend`;
		} else {
			return `<b>TODAY</b>`;
		}
	}

	/**
	 * Render size in square meters
	 * @param widthxheight {string}
	 * @returns {string}
	 */
	function renderRoomSize(widthxheight) {
		const [width, height] = widthxheight.split('x');
		const size = (parseFloat(width) * parseFloat(height) || 0).toFixed(1)
		return `<b>${width}</b>m x <b>${height}</b>m (<b>${size}</b> m<sup>2</sup>)`;
	}

	let imageTitle = "";
	let imageUrl = "";
	let popUpImage = PopUpImage;


	function showPopUpImage(url, roomName) {
		imageUrl = url.replace("-160x160", "");;
		imageTitle = "Floor Plan for "+roomName;
		popUpImage.Show();
	}
</script>

<PopUpBoardingHouse
	bind:this={popUpBoardingHouse}
	HOUSE_NAME={name}
	bind:ROOM_NAME={roomNameToAsk}
/>

<PopUpImage
	bind:this={popUpImage}
	bind:title={imageTitle}
	bind:imageUrl={imageUrl}
/>

<div class="boarding-house">
	<IFrameGMap
		name={name}
		link={mapLink}
	/>
	<div class="details">
		<p class="name">{name}</p>
		{#if facilities && facilities.length > 0}
			<div class="facilities">
				{#each (facilities || []) as facility}
					<span><b>{facility}</b></span>
				{/each}
			</div>
		{/if}
		<div class="rooms">
			<h3 class="title">Rooms</h3>
			{#each (rooms || []) as room}
				<div class="room_container">
					<div class="main">
						<!-- svelte-ignore a11y-click-events-have-key-events -->
						<div class="image" on:click={() => showPopUpImage(room.image_url, room.name)}>
							<img
								src={room.image_url}
								on:error={() => room.image_url = '/placeholder-image.webp'}
								alt={room.name}
							/>
						</div>
						<table class="room">
							<tbody>
							<tr>
								<td class="key">Room Number</td>
								<td class="sep">:</td>
								<td class="value"><b class="spaced">{room.name}</b></td>
							</tr>
							<tr>
								<td class="key">Size</td>
								<td class="sep">:</td>
								<td class="value">{@html renderRoomSize(room.size)}</td>
							</tr>
							<tr>
								<td class="key">Price</td>
								<td class="sep">:</td>
								<td class="value"><b>{
									new Intl.NumberFormat('id', {
										style: 'currency',
										currency: 'IDR',
										minimumFractionDigits: 0,
										maximumFractionDigits: 0
									}).format(
										Number(room.normalPrice || 0)
									)
								}</b></td>
							</tr>
							<tr>
								<td class="key">Discount Price</td>
								<td class="sep">:</td>
								<td class="value"><b>{
									new Intl.NumberFormat('id', {
										style: 'currency',
										currency: 'IDR',
										minimumFractionDigits: 0,
										maximumFractionDigits: 0
									}).format(
										Number(room.discountPrice || 0)
									)
								}</b> ({room.discountTerms})
								</td>
							</tr>
							<tr>
								<td class="key">Available At</td>
								<td class="sep">:</td>
								<td class="value">{room.availableAt} ({@html
									room.availableAt
										? renderAvailability(room.availableAt)
										: "--"
								})
								</td>
							</tr>
							{#if room.facilities.length > 0}
								<tr>
									<td class="key">Facilities</td>
									<td class="sep">:</td>
									<td class="value">{
										room.facilities && room.facilities.length > 0
											? room.facilities.join(', ')
											: '--'
									}</td>
								</tr>
							{/if}
							</tbody>
						</table>
					</div>
					{#if room.youtube_url}
						<IFrameYoutube link={room.youtube_url}/>
					{/if}
					<button class="btn" class:available={
							new Date(room.availableAt) <= new Date()
						} class:unavailable={
							new Date(room.availableAt) > new Date()
						}
						on:click={() => {
							roomNameToAsk = room.name;
							popUpBoardingHouse.Show(room)
						}}>
						Ask
					</button>
				</div>
			{/each}
		</div>
	</div>
</div>

<style>
	td {
		vertical-align: top;
	}

	b.spaced {
		letter-spacing: 3px;
	}

	.boarding-house {
		display: flex;
		flex-direction: column;
		background-color: #344d77;
		padding: 25px;
		border-radius: 15px;
		border: 1px solid #dddddd;
		gap: 10px;
		height: fit-content;
		break-inside: avoid-column;
		margin-bottom: 20px;
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
		border: 1px solid transparent;
		cursor: pointer;
		background: transparent;
		transition-property: all;
    transition-timing-function: linear;
    transition-duration: .2s;
	}

	.boarding-house .details .rooms .room_container .main .image img {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}

	.boarding-house .details .rooms .room_container .main .image img:hover {
		transform: scale(1.1);
	}

	.boarding-house .details .rooms .room_container .main .room {
		display: flex;
		flex-direction: column;
		flex-grow: 1;
		font-size: 13px;
	}

	.boarding-house .details .rooms .room_container .main .room .key {
		color: #ff7241;
		padding-right: 10px;
		width: 110px;
		font-weight: bold;
	}

	.boarding-house .details .rooms .room_container .main .room .sep {
		width: fit-content;
	}

	.boarding-house .details .rooms .room_container .btn {
		position: absolute;
		right: 10px;
		top: 10px;
		padding: 5px 10px;
		border-radius: 5px;
		border: none;
		color: #fff;
		cursor: pointer;
		font-size: small;
		font-weight: 600;
	}

	.boarding-house .details .rooms .room_container .btn.available {
		background-color: #3b82f6;
	}

	.boarding-house .details .rooms .room_container .btn.available:hover {
		background-color: #60a5fa;
	}

	.boarding-house .details .rooms .room_container .btn.unavailable {
		background-color: #d97706;
	}

	.boarding-house .details .rooms .room_container .btn.unavailable:hover {
		background-color: #f59e0b;
	}

	@media only screen and (max-width: 768px) {
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