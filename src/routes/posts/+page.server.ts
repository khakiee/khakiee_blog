import { getArticleMetas } from '$lib/server/posts'

import type { PageServerLoad } from './$types'

export const load: PageServerLoad = async () => {
  const posts = await getArticleMetas('src/routes/posts')
  return { posts }
}