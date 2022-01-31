<script>
	export let target = '#';
</script>

<div class="btn-box text-left">
	<a href='{target}' class="btn"> <slot>Read More</slot> </a>
</div>

<style>
	a.btn {
		font-weight: bold;
	}
</style>
