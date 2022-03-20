#!/usr/bin/env sh
#
# Copyright (C) 2022 jellybean13
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/jellybean13/Actions-OpenWrt
#
# File name: apply-custom_feeds.sh
# Description: Apply custom feeds.
#

# Switch working directory.
cd "$(dirname "$0")"

OVERLAY_DIR="overlay"
FEEDS_FILE="feeds.conf.default"

# Apply custom feeds.
if [ -e "$OVERLAY_DIR/$FEEDS_FILE" ]; then
    mv "$OVERLAY_DIR/$FEEDS_FILE" "openwrt/$FEEDS_FILE"
else
    echo "No custom feeds, using default feeds."
fi
