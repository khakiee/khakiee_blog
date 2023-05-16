<script>
  import "../app.css";
  import Footer from "../components/footer.svelte";
  import Header from "../components/header.svelte";
</script>

<Header />
<div class="container mx-auto min-h-screen max-w-3xl">
  <slot/>
</div>
<Footer />  