#!/bin/bash
set -e

git submodule init
git submodule update

# Bump in tandem with meson.build, run script once new tag is up.
VERSION="18"

NAME="artwork"
./scripts/git-archive-all.sh --format tar --prefix ${NAME}-${VERSION}/ --verbose -t HEAD ${NAME}-${VERSION}.tar
xz -9 "${NAME}-${VERSION}.tar"

# Automatically sign the tarball with GPG key of user running this script
gpg --armor --detach-sign "${NAME}-${VERSION}.tar.xz"
gpg --verify "${NAME}-${VERSION}.tar.xz.asc"
