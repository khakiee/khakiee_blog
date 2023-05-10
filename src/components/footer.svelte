<script lang=ts>
  import { Footer, FooterCopyright, FooterLinkGroup, FooterLink } from 'flowbite-svelte'
  import { env } from '$lib/env'

  const userName = env.USER_NAME
  const githubUrl = env.GITHUB_URL
  const email = env.EMAIL
</script>

<Footer class="dark:bg-gray-900">
  <FooterCopyright href="/" by="{userName}" year={2023} />
  <FooterLinkGroup ulClass="flex flex-wrap items-center mt-3 text-sm text-gray-500 dark:text-gray-400 sm:mt-0">
    <FooterLink href="/about">About</FooterLink>
    <FooterLink href="{githubUrl}">github</FooterLink>
    <FooterLink>{email}</FooterLink>
  </FooterLinkGroup>
</Footer>