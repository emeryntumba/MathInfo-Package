#!/bin/sh

set -e

VERSION="21.04"
ARCHITECTURE="amd64"
URL="http://releases.ubuntu.com/${VERSION}/ubuntu-${VERSION}-desktop-${ARCHITECTURE}.iso"
DESTINATION="$HOME/Downloads/"

wget -P "$DESTINATION" "$URL"

exit 0

