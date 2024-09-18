<script>
  import BoardingHouse from "../components/BoardingHouse.svelte";
  import GoButton from "../components/GoButton.svelte";
</script>

<section id="BoardingHouses" class="client_section layout_padding my-4">
  <div class="container">
    <div class="boarding_house_list">
      <BoardingHouse
        name="CV. Bersyukur Nalar Luas"
        normalPrice={1400000}
        discountPrice={1000000}
        discountTerms="Must pay 50% before 15th September 2024"
        facilities={[
          "Wifi", "Field", "CCTV", "Water", "Swimming Pool", "Cafe",
        ]}
        rooms={[
          {
            name: "D101",
            image_url: "/placeholder-image.webp",
            size: "4x5",
            availableAt: "2024-09-15",
            facilities: ["WC", "Kitchen", "Cabinet", "Mattress"],
            youtube_url: "https://www.youtube.com/embed/dQw4w9WgXcQ",
          }, 
          {
            name: "E201",
            image_url: "/placeholder-image.webp",
            size: "5x5",
            availableAt: "2024-09-15",
            facilities: ["Cabinet", "Kitchen", "Fan"],
          },
        ]}
        mapLink="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d782.3536318002231!2d115.17966008313937!3d-8.8034425573462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2455241786bc9%3A0x88e50b6325a3a7e0!2sCV%20Bersyukur%20Nalar%20Luas!5e0!3m2!1sen!2sid!4v1702142548984!5m2!1sen!2sid"
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

  @media only screen and (max-width : 768px) {
    .boarding_house_list {
      grid-template-columns: 1fr;
    }
  }
</style>