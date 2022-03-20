#!/usr/bin/env sh
#
# Copyright (C) 2022 jellybean13
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/jellybean13/Actions-OpenWrt
#
# File name: apply-custom_overlay.sh
# Description: Apply custom overlay.
#

# Switch working directory.
cd "$(dirname "$0")"

OVERLAY_DIR="overlay"

# Apply custom overlay.
if [ -d "$OVERLAY_DIR" ]; then
    cp -rf "$OVERLAY_DIR/." "openwrt"
else
    echo "No custom overlay."
fi
