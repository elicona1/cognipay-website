#!/usr/bin/env bash
# deploy.sh — Manual deploy script for cognipay-website
# Usage: bash scripts/deploy.sh
# Pulls latest from GitHub and syncs to /var/www/cognipay-web

set -euo pipefail

REPO_DIR="/srv/cognipay-web"
WEB_ROOT="/var/www/cognipay-web"
REPO_URL="https://github.com/elicona1/cognipay-website.git"

echo "🚀 CogniPay Website Deploy"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Clone or pull
if [ ! -d "$REPO_DIR/.git" ]; then
  echo "→ Cloning repo..."
  git clone "$REPO_URL" "$REPO_DIR"
else
  echo "→ Pulling latest..."
  cd "$REPO_DIR" && git pull origin main
fi

# Sync web root
echo "→ Syncing to $WEB_ROOT..."
cp "$REPO_DIR/index.html" "$WEB_ROOT/index.html"

# Copy any new nginx config if changed
if [ -f "$REPO_DIR/nginx/cognipay-web.conf" ]; then
  if ! diff -q "$REPO_DIR/nginx/cognipay-web.conf" /etc/nginx/sites-available/cognipay-web &>/dev/null; then
    echo "→ Nginx config changed — updating and reloading..."
    cp "$REPO_DIR/nginx/cognipay-web.conf" /etc/nginx/sites-available/cognipay-web
    /usr/sbin/nginx -t && systemctl reload nginx
  fi
fi

# Ensure nginx is running
systemctl is-active nginx &>/dev/null || systemctl start nginx

# Verify
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1/)
if [ "$STATUS" = "200" ]; then
  echo "✅ Deploy complete — site live at http://$(hostname -I | awk '{print $1}')"
else
  echo "❌ Site returned HTTP $STATUS — check nginx logs"
  exit 1
fi
