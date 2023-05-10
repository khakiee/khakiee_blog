#!/bin/sh

read -p "Please enter a title: " title
read -p "Would you like to enter a summary? (y/n): " add_summary

if [ "$add_summary" = "y" ] || [ "$add_summary" = "Y" ]; then
  read -p "Please enter a summary: " summary
else
  summary=""
fi

current_datetime=$(date "+%Y-%m-%d %H:%M")
remarked_title=$(echo "$title" | sed 's/ /-/g')
article_path="articles"
page_path="src/routes/posts/$remarked_title"

mkdir -p $article_path/$remarked_title
touch "$article_path/$remarked_title/+page.md"

cat > "$article_path/$remarked_title/+page.md" << EOL
---
title: $title
summary: $summary
publishedAt: $current_datetime
---
EOL

# ./src/routes/posts/제목 이라는 디렉토리에 symbolic link 생성
ln -fs ../../../articles/$remarked_title $page_path

echo "* New post '$title' created in $article_path/$remarked_title!"

if [ -n "$summary" ]; then
  echo "* Summary: $summary"
else
  echo "* No summary entered."
fi

echo "* And symbolic link created in $page_path!"