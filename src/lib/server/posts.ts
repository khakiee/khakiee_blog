import fss from 'fs'
import fs from 'fs/promises'
import yaml from 'js-yaml'


export type PostMetaData = {
  id: string
  title: string
  publishedAt: string
  modifiedAt: string
  summary: string
  thumbnail: string
}

export async function getPostMetadatas(dir: string): Promise<PostMetaData[]> {
  const promises = (await fs.readdir(dir))
    .filter(f => fss.existsSync(`${dir}/${f}/+page.md`))
    .map(id => getPostMetadata(dir, id))
  return (await Promise.all(promises)).sort((a, b) => (a.publishedAt < b.publishedAt ? 1 : -1))
}

async function getPostMetadata(dir: string, id: string): Promise<PostMetaData> {
  const filepath = `${dir}/${id}/+page.md`
  const markdown = (await fs.readFile(filepath)).toString()
  const mtime = (await fs.stat(filepath)).mtime

  const S = '---\n' // separator
  const raw = markdown.substring(S.length, markdown.indexOf(S, S.length)).trim()
  const frontmatter = yaml.load(raw) as Record<string, any>
  return {
    ...frontmatter,
    id,
    modifiedAt: mtime.toISOString()
  } as PostMetaData
}