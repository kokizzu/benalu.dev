<script>
  export let value = "";
  export let label = "";
  export let id = "";
  export let placeholder = "";
</script>

<div class="input-box">
  <label for={id}>{label}</label>
  <input
    type="text"
    id={id}
    placeholder={placeholder}
    autocomplete="off"
    bind:value={value}
  />
</div>

<style>
  .input-box {
    display: flex;
    flex-direction: column;
    width: 100%;
    color: #FFF;
    background-color: transparent;
    display: flex;
    gap: 5px;
  }
  .input-box label {
    font-size: var(--font-base);
    margin-left: 10px;
    overflow: hidden;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 1;
    line-clamp: 1;
  }

  .input-box input {
    width: 100%;
    border: 1px solid #DDD;
    border-radius: 5px;
    background-color: transparent;
    padding: 10px 12px;
    color: #FFF;
  }

  .input-box input:focus {
    border-color: var(--bs-orange);
    outline: 2px solid var(--bs-orange);
  }
</style>