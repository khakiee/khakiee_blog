import { getPostMetadatas } from '$lib/server/posts'

import type { PageServerLoad } from './$types'

export const load: PageServerLoad = async () => {
  const posts = await getPostMetadatas('src/routes/posts')
  return { posts }
}