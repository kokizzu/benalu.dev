<script>
  import GoButton from "../components/GoButton.svelte";
  import Partner from "../components/Partner.svelte";
</script>

<section id="Partners" class="client_section layout_padding my-4">
  <div class="container">
    <div class="partner_list">
      <Partner
        name="Tokopedia"
        address="Jl. Lkr. Luar Barat No.101, Rw. Buaya, Kecamatan Cengkareng, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11740"
        contacts={[
          {
            type: "telegram",
            value: "tokopedia"
          },
          {
            type: "whatsapp",
            value: "628123456789"
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

  @media only screen and (max-width : 768px) {
    .partner_list {
      grid-template-columns: 1fr;
    }
  }
</style>