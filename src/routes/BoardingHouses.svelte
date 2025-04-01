<script>
	import BoardingHouse from "../components/BoardingHouse.svelte";
	import GoButton from "../components/GoButton.svelte";
	import { roomsA, roomsB, roomsC, roomsD, roomsE, roomsF, roomsG, roomsH, roomsI, roomsJ } from "../rooms.js"
</script>

<section id="BoardingHouses" class="client_section layout_padding my-4">
	<div class="container">
		<div class="heading_container pb-5">
			<h2 class="section-title">Boarding Houses</h2>
		</div>
		<div>Addons:
			<ul>
				<li>Shared internet 100K IDR per device per month</li>
				<li>Laundry 50K IDR per basket (max 7kg)</li>
			</ul>
		</div>
		<div class="boarding_house_list">
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Angelic (A)"
				facilities={[
					"Concrete House",
          "3 Shower Bathroom and Toilet", "Shared Trash Can per floor",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsA}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Blessing (B)"
				facilities={[
					"Concrete House",
          "3 Shower Bathroom and Toilet", "Shared Trash Can per floor",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsB}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Cherrish (C)"
				facilities={[
					"Concrete House",
          "3 Shower Bathroom and Toilet", "Shared Trash Can per floor",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsC}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Dominion (D)"
				facilities={[
					"Wooden House",
          "2 Shower Bathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month per floor)",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsD}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Eternal (E)"
				facilities={[
					"Wooden House",
          "1 Shower Bathroom", "1 Toilet", "Shared Trash Can", "Free Electricity (1mio per month)",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsE}
				/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Faith (F)"
				facilities={[
					"Wooden House",
          "1 Shower Bathroom", "1 Toilet", "Shared Trash Can", "Free Electricity (1mio per month)",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsF}
				/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Grace (G)"
				facilities={[
					"Fibercement House",
          "WiFi", "CCTV", "2 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsG}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Hope (H)"
				facilities={[
					"Wooden House",
          "4 ShowerBathroom and Toilet", "Shared Trash Can",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsH}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Incarnation (I)"
				facilities={[
					"Bricks and Fibercement House",
          "4 ShowerBathroom and Toilet", "Shared Trash Can",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsI}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.4212310185662!2d115.1808988!3d-8.8008672!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2451f0a3c4c21%3A0x56771eec9c453d77!2sKost%20JC!5e0!3m2!1sen!2sid!4v1730472401001!5m2!1sen!2sid"
				name="Kost JC Justice (J)"
				facilities={[
					"Fibercement House",
          "1 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed 80x195", "Lazy Chair Divan", "Topper", "Bedsheet", "Bedcover", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={roomsJ}
			/>
		</div>
	</div>
	<GoButton target="#Home"> Back to Top</GoButton>
</section>

<style>
	.boarding_house_list {
    column-count: auto;
    column-width: 500px;
    column-gap: 20px;
		width: 100%;
	}

	@media only screen and (max-width: 768px) {
		.boarding_house_list {
      display: grid;
			grid-template-columns: 1fr;
		}
	}
</style>
