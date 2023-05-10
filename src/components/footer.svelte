<script lang=ts>
  import { Footer, FooterCopyright, FooterLinkGroup, FooterLink } from 'flowbite-svelte'

  const userName = import.meta.env.VITE_USER_NAME
  const githubUrl = import.meta.env.VITE_GITHUB_URL
  const email = import.meta.env.VITE_EMAIL
</script>

<Footer class="dark:bg-gray-900">
  <FooterCopyright href="/" by="{userName}" year={2023} />
  <FooterLinkGroup ulClass="flex flex-wrap items-center mt-3 text-sm text-gray-500 dark:text-gray-400 sm:mt-0">
    <FooterLink href="/about">About</FooterLink>
    <FooterLink href="{githubUrl}">github</FooterLink>
    <FooterLink>{email}</FooterLink>
  </FooterLinkGroup>
</Footer>