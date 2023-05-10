<script lang=ts>
  import { Avatar, DarkMode } from 'flowbite-svelte';
  import { Navbar, NavBrand, NavLi, NavUl, NavHamburger } from 'flowbite-svelte'

  const userName = import.meta.env.VITE_USER_NAME
  const profileUrl = import.meta.env.VITE_PROFILE_URL
</script>

<Navbar let:hidden let:toggle rounded color="dark" class=" min-w-fit dark:bg-gray-900">
  <NavBrand href="/">
    <Avatar src="{profileUrl}" class="mr-3 h-6 sm:h-9" alt="avatar"/>
    <span class="self-center whitespace-nowrap text-xl font-semibold dark:text-white">{userName}</span>
  </NavBrand>
  <DarkMode />
  <NavHamburger on:click={toggle} />
  <NavUl {hidden}>
    <NavLi href="/">Home</NavLi>
    <NavLi href="/about">About</NavLi>
    <NavLi href="/posts">Posts</NavLi>
  </NavUl>
</Navbar>