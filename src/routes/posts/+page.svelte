<script lang="ts">
  import Card from '../../components/card.svelte';
  import type { PageData } from './$types'

  export let data: PageData
  let posts = data.posts
</script>

<ul class="w-full">
  {#each posts as post}
    <li class=" w-full mt-5">
      <Card {post} />
    </li>
  {/each}
</ul>