#!/bin/sh

set -e

VERSION="21.04"
ARCHITECTURE="amd64"
URL="http://releases.ubuntu.com/${VERSION}/ubuntu-${VERSION}-desktop-${ARCHITECTURE}.iso"
DESTINATION="$HOME/Downloads/"

wget -P "$DESTINATION" "$URL"
echo "Find your Ubuntu Image ISO to your default Downloads folder"

exit 0

