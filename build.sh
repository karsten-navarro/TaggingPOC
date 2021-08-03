#!/bin/bash
git checkout master
git pull

TAG_FROM_PR=$(git log --merges --first-parent master -1 --format=%s | grep -Eo '[0-9].[0-9].[0-9]')
DATE=$(date +'%B %e, %Y')

echo "---------------------------------------"
echo "Latest existing tag : v$TAG_FROM_PR"
echo "The date today: $DATE"

# ---------------------------------------
git tag -a "v$TAG_FROM_PR" -m "($DATE)" -m "Next step is deploy to PROD environment."
git push origin tag "v$TAG_FROM_PR"

echo "---------------------------------------"
echo "Complete tag list:"
git tag -n9
echo "---------------------------------------"