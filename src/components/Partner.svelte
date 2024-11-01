<script>
	/**
	 * @typedef {Object} Contact
	 * @property {'telegram' | 'whatsapp'} type
	 * @property {string} value
	 */

	import { Icon } from "svelte-icons-pack";
	import { BsTelegram, BsWhatsapp } from "../../node_modules/svelte-icons-pack/dist/bs";
	import { BsBank, BsFacebook, BsInstagram } from "svelte-icons-pack/dist/bs";

	export let name = /** @type {string} */ ('');
	export let contacts = /** @type {Contact[]} */ ([]);
	export let address = /** @type {string} */ ('');
</script>

<div class="partner">
	<p class="name">{name}</p>
	<p class="address">{address}</p>
	{#if contacts && contacts.length > 0}
		<div class="contacts">
			{#each (contacts || []) as contact}
				{#if contact.type === "telegram"}
					<a href={`https://t.me/${contact.value}`} target="_blank">
						<Icon
							src={BsTelegram}
							size={18}
							color="#FFF"
							className="icon"
						/>
						<span>@{contact.value}</span>
					</a>
				{/if}
				{#if contact.type === "whatsapp"}
					<a href={`https://wa.me/${contact.value}`} target="_blank">
						<Icon
							src={BsWhatsapp}
							size={18}
							color="#FFF"
							className="icon"
						/>
						<span>{contact.value}</span>
					</a>
				{/if}
				{#if contact.type === "instagram"}
					<a href={`https://instagram.com/${contact.value}`} target="_blank">
						<Icon
							src={BsInstagram}
							size={18}
							color="#FFF"
							className="icon"
						/>
						<span>{contact.value}</span>
					</a>
				{/if}
				{#if contact.type === "facebook"}
					<a href={`https://facebook.com/p/${contact.value}`} target="_blank">
						<Icon
							src={BsFacebook}
							size={18}
							color="#FFF"
							className="icon"
						/>
						<span>{contact.value.replaceAll(/[_\-]/g, " ")}</span>
					</a>
				{/if}
				{#if contact.type.indexOf("Bank") === 0}
					<span><Icon
						src={BsBank}
						size={18}
						color="#FFF"
						className="icon"
					/>
					&nbsp; <b>{contact.type}</b>: {contact.value}</span>
				{/if}
			{/each}
		</div>
	{/if}
</div>

<style>
	.partner {
		display: flex;
		flex-direction: column;
		background-color: #344d77;
		padding: 25px;
		border-radius: 15px;
		border: 1px solid #dddddd;
		gap: 0;
	}

	.partner .name {
		font-weight: 600;
		color: orange;
		padding-bottom: 0.2em;
		font-size: 1.5em;
		margin: 0;
	}

	.partner .address {
		color: var(--bs-green);
		margin: 0 0 10px 0;
	}

	.partner .contacts {
		margin: 0;
		display: flex;
		flex-direction: column;
		gap: 5px;
	}

	.partner .contacts a {
		display: flex;
		flex-direction: row;
		align-items: center;
		gap: 10px;
		color: #fff;
		text-decoration: none;
		font-size: small;
	}

	.partner .contacts a:hover span {
		color: var(--bs-orange);
	}

	:global(.partner .contacts a:hover .icon) {
		color: var(--bs-orange) !important;
	}
</style>