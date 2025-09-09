#!/bin/bash

# Download favicon files
BASE_URL="https://raw.githubusercontent.com/jherberth07/mod-sei-rest-ai/8144efd92d09e82fc0b9c1e62605b9faa808cd96/sei/web/modulos/pesquisa/favicon"
TARGET_DIR="/home/runner/work/Manuais/Manuais/sei/web/modulos/MdSeiRestAi/favicon"

cd "$TARGET_DIR"

# Array of favicon files
favicon_files=(
    "android-icon-192x192.png"
    "android-icon-512x512.png"
    "apple-icon-114x114.png"
    "apple-icon-120x120.png"
    "apple-icon-144x144.png"
    "apple-icon-152x152.png"
    "apple-icon-180x180.png"
    "apple-icon-57x57.png"
    "apple-icon-60x60.png"
    "apple-icon-72x72.png"
    "apple-icon-76x76.png"
    "apple-touch-icon.png"
    "browserconfig.xml"
    "favicon-16x16.png"
    "favicon-32x32.png"
    "favicon-96x96.png"
    "favicon.ico"
    "mstile-144x144.png"
    "mstile-150x150.png"
    "mstile-310x150.png"
    "mstile-310x310.png"
    "mstile-70x70.png"
    "safari-pinned-tab.svg"
    "sei.webmanifest"
)

for file in "${favicon_files[@]}"; do
    echo "Downloading $file..."
    curl -s -o "$file" "$BASE_URL/$file"
done

echo "All favicon files downloaded successfully"