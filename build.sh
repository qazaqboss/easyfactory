#!/bin/sh
# Собирает статический сайт в dist/ и делает ссылки на превью (og:image) абсолютными —
# этого требуют Telegram, WhatsApp, Facebook и другие площадки.
# Адрес берётся из SITE_URL, иначе из системной переменной Vercel.
set -e
URL="${SITE_URL:-${VERCEL_PROJECT_PRODUCTION_URL:+https://$VERCEL_PROJECT_PRODUCTION_URL}}"
rm -rf dist && mkdir dist
cp -r index.html og-image.png vendor dist/
if [ -n "$URL" ]; then
  URL="${URL%/}"
  sed -i "s#content=\"/og-image.png\"#content=\"$URL/og-image.png\"#g" dist/index.html
  sed -i "s#<meta property=\"og:type\"#<meta property=\"og:url\" content=\"$URL/\">\n<meta property=\"og:type\"#" dist/index.html
  echo "og:image -> $URL/og-image.png"
fi
