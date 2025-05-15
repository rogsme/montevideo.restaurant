#!/bin/bash

find ./ -type f -name '*.png' -not -path '*/.git/*' -exec sh -c 'cwebp -lossless "$1" -o "${1%.png}.webp"' _ {} \;
find ./ -type f -name '*.jpg' -not -path '*/.git/*' -exec sh -c 'cwebp -lossless "$1" -o "${1%.jpg}.webp"' _ {} \;
find ./ -type f -name '*.jpeg' -not -path '*/.git/*' -exec sh -c 'cwebp -lossless "$1" -o "${1%.jpeg}.webp"' _ {} \;

find . -type f -not -path '*/.git/*' -exec sed -i -e 's/\.png/\.webp/g' {} \;
find . -type f -not -path '*/.git/*' -exec sed -i -e 's/\.jpg/\.webp/g' {} \;
find . -type f -not -path '*/.git/*' -exec sed -i -e 's/\.jpeg/\.webp/g' {} \;

hugo -s . -d /var/www/montevideo.restaurant/ --minify --cacheDir $PWD/hugo-cache
