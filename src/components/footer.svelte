<script>
  import { Footer, FooterCopyright, FooterLinkGroup, FooterLink } from 'flowbite-svelte'
</script>

<Footer class="dark:bg-gray-900">
  <FooterCopyright href="/" by="Flowbite™" year={2022} />
  <FooterLinkGroup ulClass="flex flex-wrap items-center mt-3 text-sm text-gray-500 dark:text-gray-400 sm:mt-0">
    <FooterLink href="/about">About</FooterLink>
    <FooterLink href="https://github.com/khakiee">github</FooterLink>
    <FooterLink>noneobj@gmail.com</FooterLink>
  </FooterLinkGroup>
</Footer>