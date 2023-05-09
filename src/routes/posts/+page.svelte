<script lang="ts">
  import type { PageData } from './$types'

  export let data: PageData
  let posts = data.posts
</script>

<ul class="posts">
  {#each posts as post}
    <li>
      <article>
        <h2 class="title"><a href={`/posts/${post.id}`}>{post.title}</a></h2>
        <time class="published-at">{post.publishedAt}</time>
        <p class="summary">{post.summary}</p>
      </article>
    </li>
  {/each}
</ul>