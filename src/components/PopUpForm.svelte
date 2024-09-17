<script>
  import kuisioner from '../kuisioner.json';

  export let ROOM_NAME = '';
  let isShow = /** @type {boolean} */ (false);

  export let OnSubmit = async function(/** @type any[] */ payloads) {}  
  export const Show = () => isShow = true;
  export const Hide = () => isShow = false;
  
  
</script>

<div>
  popup
</div>