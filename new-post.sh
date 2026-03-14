#!/bin/bash
# Usage: ./new-post.sh "My Post Subtitle"
# Creates a new post with an auto-incremented entry number and today's date.

SUBTITLE="${1:-New Post}"
DATE=$(date +%Y-%m-%d)

# Count existing posts to determine next entry number
NEXT=$(ls _posts/*.md 2>/dev/null | wc -l | tr -d ' ')
NEXT=$((NEXT + 1))

TITLE="Entry ${NEXT}: ${SUBTITLE}"
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-\|-$//g')
FILE="_posts/${DATE}-${SLUG}.md"

cat > "$FILE" <<EOF
## ${TITLE}

Write your post here.
EOF

echo "Created: $FILE"
