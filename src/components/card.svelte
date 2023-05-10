<script lang=ts>
  import type { PostMetaData } from "$lib/server/posts";
  import { Card } from "flowbite-svelte";

  export let post: PostMetaData;
</script>

{#if post.thumbnail}
  <Card img="{post.thumbnail}" href={`/posts/${post.id}`} size="xl" horizontal>
    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{post.title}</h5>
    <time class="published-at">{post.publishedAt}</time>
    {#if post.summary}
      <p class="font-normal text-gray-700 dark:text-gray-400 leading-tight">
        {post.summary}
      </p>
    {/if}
  </Card>
{/if}

{#if !post.thumbnail}
  <Card href={`/posts/${post.id}`} size="xl">
    <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{post.title}</h5>
    <time class="published-at">{post.publishedAt}</time>
    {#if post.summary}
      <p class="font-normal text-gray-700 dark:text-gray-400 leading-tight">
        {post.summary}
      </p>
    {/if}
  </Card>
{/if}