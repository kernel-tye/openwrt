#!/usr/bin/env sh
#
# Copyright (C) 2022 jellybean13
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/jellybean13/Actions-OpenWrt
#
# File name: apply-custom_patches.sh
# Description: Apply custom patches.
#

# Switch working directory.
cd "$(dirname "$0")"

PATCHES_DIR="patches"

# Apply custom patches.
PATCHES_FILE_PATH="$(find "$PATCHES_DIR" -type f -name "*.patch")"

if [ -n "$PATCHES_FILE_PATH" ]; then
    echo "$PATCHES_FILE_PATH" | while IFS= read -r line; do
        patch -d openwrt -p1 < "$line"
    done
else
    echo "No custom patches."
fi
