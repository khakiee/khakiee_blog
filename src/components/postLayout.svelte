<script lang=ts>
  export let title = '';
  export let summary = '';
  export let publishedAt = '';
  export let thumbnail = '';
</script>

<svelte:head>
  <title>{title}</title>
  <meta name="description" content={summary} />
</svelte:head>

 <!-- 썸네일 -->
 <div class="relative h-64">
  {#if thumbnail}
    <img src={thumbnail} alt={title} class="absolute w-full h-full object-cover" />
  {/if}
  {#if !thumbnail}
    <div class="absolute w-full h-full object-cover dark:bg-gray-800 bg-gray-200" />
  {/if}

  <div class="absolute w-full h-full bg-black bg-opacity-50" />
  <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-center text-white">
    <h1 class="text-4xl font-bold">{title}</h1>
    <p class="text-gray-400 mt-5">
      <time>{publishedAt}</time>
    </p>
  </div>
</div>

<article class="markdown-body mx-auto mb-40">
  <slot />
</article>