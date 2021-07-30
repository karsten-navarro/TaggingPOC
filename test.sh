#!/bin/bash

CURRENT_TAG="v1.3.1"
INT=$(grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' <<< "$CURRENT_TAG") 
MAJOR=$(cut -d'.' -f1 <<< "$INT")
MINOR=$(cut -d'.' -f2 <<< "$INT")
PATCH=$(cut -d'.' -f3 <<< "$INT")

MAJOR=$(($MAJOR+1))
# Value to increment (vX.Y.Z) == (vMAJOR.MINOR.PATCH)

NEW_TAG="v$MAJOR.$MINOR.$PATCH"

echo $NEW_TAG

exit 0
