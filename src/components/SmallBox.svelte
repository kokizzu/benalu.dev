<script>
	export let title = '';
	export let site = '';
</script>
<div class="item col-sm-12 col-md-6 col-lg-3">
	<div class="box">
		<div class="detail-box mb-3 text-left">
			<p class="title">{title}</p>
			<h6><a href="//{site}">{site}</h6>
			<p>
				<slot/>
			</p>
		</div>
	</div>
</div>
<style>


	.box {
		display: -webkit-box;
		display: -ms-flexbox;
		display: flex;
	}

	.box .detail-box {
		position: relative;
		background-color: #344d77;
		color: #ffffff;
		border: 1px solid #dddddd;
		padding: 25px;
		margin-left: 30px;
		border-radius: 16px;
	}

	.box .detail-box p.title {
		font-weight: 600;
		color: orange;
		padding-bottom: 0.2em;
		font-size: 1.5em;
	}

	.box .detail-box p {
		margin: 0;
	}

	.box .detail-box::before {
		content: "";
		background-color: #ff7241;
		width: 25px;
		height: 25px;
		position: absolute;
		top: 4px;
		left: -12px;
		-webkit-transform: rotate(45deg);
		transform: rotate(45deg);
	}

	a {
		color: var(--bs-green);
	}

</style>
