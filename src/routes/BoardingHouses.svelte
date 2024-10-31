<script>
	import BoardingHouse from "../components/BoardingHouse.svelte";
	import GoButton from "../components/GoButton.svelte";
</script>

<section id="BoardingHouses" class="client_section layout_padding my-4">
	<div class="container">
		<div class="heading_container pb-5">
			<h2 class="section-title">Boarding Houses</h2>
		</div>
			<!-- TODO: make mapLink loading -->
		<div class="boarding_house_list">
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Dominion (D)"
				facilities={[
					"Wooden House",
          "2 Shower Bathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "D11",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-11-15",
            normalPrice: 1_400_000,
        		discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
            // TODO: make youtube lazy loading
          },
          {
            name: "D12",
            image_url: "/placeholder-image.webp",
            size: "3x3",
            availableAt: "2024-11-15",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
			 },
          {
            name: "D13",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-11-15",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "D24",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-11-15",
            normalPrice: 1_400_000,
        		discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
            // TODO: make youtube lazy loading
          },
          {
            name: "D25",
            image_url: "/placeholder-image.webp",
            size: "3x3",
            availableAt: "2024-11-15",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
			 },
          {
            name: "D26",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-11-15",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Eternal (E)"
				facilities={[
					"Wooden House",
          "1 Shower Bathroom", "1 Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "E11",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
            normalPrice: 1_600_000,
        		discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 500K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "E22",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
				normalPrice: 1_400_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
			 },
          {
            name: "E23",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
				normalPrice: 1_400_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
				/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Faith (F)"
				facilities={[
					"Wooden House",
          "1 Shower Bathroom", "1 Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "F11",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
            normalPrice: 1_600_000,
        		discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 500K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "F22",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
				normalPrice: 1_400_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
			 },
          {
            name: "F23",
            image_url: "/placeholder-image.webp",
            size: "3x4",
            availableAt: "2024-12-01",
				normalPrice: 1_400_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 300K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
				/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Grace (G)"
				facilities={[
					"Fibercement House",
          "WiFi", "CCTV", "2 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "G11",
            image_url: "/placeholder-image.webp",
            size: "4x4",
            availableAt: "2024-10-20",
				normalPrice: 2_000_000,
				discountPrice: 1_500_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "G22",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-10-30",
				normalPrice: 1_500_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "G23",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-10-30",
				normalPrice: 1_500_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "G24",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-10-30",
				normalPrice: 1_500_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Hope (H)"
				facilities={[
					"Wooden House",
          "4 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "I10",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I11",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I12",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I13",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I14",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I25",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I26",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I27",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I28",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I29",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2025-01-01",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Incarnation (I)"
				facilities={[
					"Bricks and Fibercement House",
          "4 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "I10",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I11",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I12",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I13",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I14",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I25",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I26",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I27",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I28",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "I29",
            image_url: "/placeholder-image.webp",
            size: "2.5x3.5",
            availableAt: "2024-12-07",
				normalPrice: 1_200_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 100K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
			/>
			<BoardingHouse
				mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
				name="Kost JC Incarnation (I)"
				facilities={[
					"Fibercement House",
          "1 ShowerBathroom and Toilet", "Shared Trash Can", "Free Electricity (500K per month)",
          "Portable Foam Bed", "Lazy Chair", "Bedcover", "Bedsheet", "Topper", "Pillow", "Bolster", "2 Pillowcase", "2 Bolstercase", "KWS Meter", "Chair", "Adjustable Desk", "Doormat", "Mirror", "Wardrobe", "AC"
        ]}
				rooms={[
          {
            name: "J21",
            image_url: "/placeholder-image.webp",
            size: "3.5x3.5",
            availableAt: "2024-12-01",
				normalPrice: 1_500_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
            //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
          {
            name: "J22",
            image_url: "/placeholder-image.webp",
            size: "4x3",
            availableAt: "2024-12-01",
				normalPrice: 1_500_000,
				discountPrice: 1_000_000,
	         discountTerms: "Donate to our partner each month at least 400K",
            facilities: [],
             //youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          },
        ]}
			/>
		</div>
	</div>
	<GoButton target="#Home"> Back to Top</GoButton>
</section>

<style>
	.boarding_house_list {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: 20px;
		width: 100%;
	}

	@media only screen and (max-width: 768px) {
		.boarding_house_list {
			grid-template-columns: 1fr;
		}
	}
</style>