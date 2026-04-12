#!/bin/zsh

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: ./scripts/new-post.sh \"Post Title\""
  exit 1
fi

title="$*"
site_dir="/Users/jesse/GitHub/SmillieWorldBlog"

slug=$(printf "%s" "$title" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//; s/-+/-/g')

if [[ -z "$slug" ]]; then
  echo "Could not generate a slug from that title."
  exit 1
fi

post_path="$site_dir/content/posts/${slug}.md"

if [[ -e "$post_path" ]]; then
  echo "Post already exists: $post_path"
  exit 1
fi

hugo new --source "$site_dir" "content/posts/${slug}.md" >/dev/null

echo "Created: $post_path"
echo "Edit it, then set draft = false when you're ready to publish."
echo "Preview with: cd $site_dir && hugo server -D"
