<script lang=ts>
  import { Avatar, DarkMode } from 'flowbite-svelte';
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger } from 'flowbite-svelte'
  import { page } from '$app/stores';

  function isActive(path: string): boolean {
    return $page.url.pathname == path
  }
</script>

<Navbar let:hidden let:toggle rounded color="dark" class=" min-w-fit dark:bg-gray-900">
  <NavBrand href="/">
    <Avatar src="https://avatars.githubusercontent.com/u/21821942?v=4" class="mr-3 h-6 sm:h-9" alt="avatar"/>
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">khakiee</span>
  </NavBrand>
  <DarkMode />
  <NavHamburger on:click={toggle} />
  <NavUl {hidden}>
    <NavLi href="/">Home</NavLi>
    <NavLi href="/about">About</NavLi>
    <NavLi href="/posts">Posts</NavLi>
  </NavUl>
</Navbar>