<script lang="ts">
  import { Card } from "flowbite-svelte";
  import type { PageData } from './$types'

  export let data: PageData
  const latestPosts = data.posts.slice(0, 10)
</script>

<div class="home-container container mx-auto">
  <p class="text-4xl font-bold tracking-tight text-gray-900 dark:text-white mt-5">
    Latest posts
  </p>
  {#each latestPosts as post}
    <Card id="home-latest-post-card" href={`/posts/${post.id}`} img="{post.thumbnail}" size="xl" class="mt-5">
      <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{post.title}</h5>
      {#if post.summary}
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-300 leading-tight overflow-hidden">
          {post.summary}
        </p>
      {/if}
      <p class="text-xs text-gray-400">
        {post.publishedAt}
      </p>
    </Card>
  {/each}
</div>
