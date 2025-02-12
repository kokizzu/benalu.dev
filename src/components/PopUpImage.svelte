<script>
	import { Icon } from "svelte-icons-pack";
	import { IoClose } from "../../node_modules/svelte-icons-pack/dist/io"

	let isShow = /** @type {boolean} */ (false);

  export let title = "";
  export let imageUrl = "";
	
	export const Show = () => isShow = true;
	export const Hide = () => isShow = false;

</script>

<div class={`popup_container ${isShow ? 'show' : ''}`}>
	<div class="popup">
		<header class="header">
			<h2>{title}</h2>
			<button on:click={Hide}>
				<Icon size="22" color="#FFF" src={IoClose}/>
			</button>
		</header>
    <div class="forms">
      <div class="image">
        <img
          src={imageUrl}
          alt={title}
          on:error={() => imageUrl = '/placeholder-image.webp'}
        />
      </div>
    </div>
	</div>
</div>

<style>
	.popup_container {
		display: none;
		position: fixed;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		bottom: 0;
		right: 0;
		z-index: 2000;
		background-color: rgba(0 0 0 / 40%);
		backdrop-filter: blur(1px);
		justify-content: center;
		padding: 50px;
		overflow: auto;
	}

	.popup_container.show {
		display: flex;
	}

	.popup_container .popup {
		border-radius: 15px;
		background-color: #344d77;
		color: #FFF;
		border: 1px solid #dddddd;
		height: fit-content;
		width: fit-content;
		display: flex;
		flex-direction: column;
	}

	.popup_container .popup header {
		display: flex;
		flex-direction: row;
		justify-content: space-between;
		align-items: center;
		padding: 25px 20px 10px 20px;
		border-bottom: 1px solid var(--gray-004);
	}

	.popup_container .popup header h2 {
		margin: 0;
    font-size: large;
		font-weight: 600;
	}

	.popup_container .popup header button {
		display: flex;
		justify-content: center;
		align-items: center;
		padding: 5px;
		border-radius: 50%;
		border: none;
		background-color: transparent;
		cursor: pointer;
	}

	.popup_container .popup header button:hover {
		background-color: #ffffff20;
	}

  .popup_container .popup .forms {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 10px;
    padding: 0 20px 20px;
  }

  .popup_container .popup .image {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 530px;
		width: 530px;
		border-radius: 8px;
		overflow: hidden;
  }

  .popup_container .popup .image img {
		width: 100%;
		height: 100%;
		object-fit: cover;
	}

	@media only screen and (max-width: 768px) {
		.popup_container {
			padding: 20px;
		}

		.popup_container .popup {
			width: 100%;
		}

    .popup_container .popup .image {
      width: 100%;
      height: auto;
    }
	}
</style>