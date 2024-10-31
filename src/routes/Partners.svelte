<script>
	import GoButton from "../components/GoButton.svelte";
	import Partner from "../components/Partner.svelte";
</script>

<section id="Partners" class="client_section layout_padding my-4">
	<div class="container">
		<div class="heading_container pb-5">
			<h2 class="section-title">Our Partners</h2>
		</div>
		<div class="partner_list">
			<Partner
				name="Bina Ekklesia Bali (Ibu Ketut Sion)"
				address="Jl. Tukad Pakerisan Gg. XVI B No.1, Panjer, Denpasar, Bali, Indonesia 80225"
				contacts={[
          {
            type: "whatsapp",
            value: "6281238548884"
          },
          {
            type: "instagram",
            value: "binaekklesiabali"
          },
          {
				 type: 'facebook',
				  value: '/p/Panti-Asuhan-Bina-Ekklesia-_-Bali-100067168449745/',
			 },
			 {
				 type: 'BCA',
			  	value:'7670480806',
			 }
        ]}
			/>
		</div>
	</div>
	<GoButton target="#Home"> Back to Top</GoButton>
</section>

<style>
	.partner_list {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr;
		gap: 20px;
		width: 100%;
	}

	@media only screen and (max-width: 768px) {
		.partner_list {
			grid-template-columns: 1fr;
		}
	}
</style>