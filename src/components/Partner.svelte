<script>
  /**
   * @typedef {Object} Contact
   * @property {'telegram' | 'whatsapp'} type
   * @property {string} value
   */

  import { Icon } from "svelte-icons-pack";
  import { BsTelegram, BsWhatsapp } from "../../node_modules/svelte-icons-pack/dist/bs";

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
            />
            <span>{contact.value}</span>
          </a>
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
    color: rgb(71, 210, 120);
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
    text-decoration: underline;
  }
</style>