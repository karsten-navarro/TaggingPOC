#!/bin/bash
git checkout master
git pull

TAG=$(git log -1 --format=%b | grep -Eo '[0-9].[0-9].[0-9]')
DATE=$(date +'%B %e, %Y')

echo "---------------------------------------"
echo "Latest existing tag : v$TAG"
echo "The date today: $DATE"

# ---------------------------------------
git tag -a "v$TAG" -m "($DATE)" -m "Next step is deploy to PROD environment."
git push origin tag "v$TAG_"

echo "---------------------------------------"
echo "Complete tag list:"
git tag -n9
echo "---------------------------------------"
