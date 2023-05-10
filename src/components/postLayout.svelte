<script lang=ts>
  export let title = ''
  export let summary = ''
  export let publishedAt = ''
</script>

<svelte:head>
  <title>{title}</title>
  <meta name="description" content={summary} />
</svelte:head>

<article class="markdown-body mx-auto">
  <h1>{title}</h1>
  <p>
    <time>{publishedAt}</time>
  </p>
  <slot />
</article>