#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/home/ubuntu/kelesss.art"
BRANCH="main"
LOCK_FILE="/run/lock/kelesss-art-sync.lock"

exec 9>"$LOCK_FILE"
flock -n 9 || exit 0

GIT=(runuser -u ubuntu -- git -C "$APP_DIR")
FETCH_OK=0
for ATTEMPT in 1 2 3; do
  if timeout 90s "${GIT[@]}" -c http.version=HTTP/1.1 -c http.lowSpeedLimit=100 -c http.lowSpeedTime=60 fetch --quiet origin "$BRANCH"; then
    FETCH_OK=1
    break
  fi
  logger -t kelesss-art-sync "GitHub fetch attempt $ATTEMPT failed"
  sleep 5
done
if [[ "$FETCH_OK" -ne 1 ]]; then
  exit 1
fi

LOCAL_SHA="$("${GIT[@]}" rev-parse HEAD)"
REMOTE_SHA="$("${GIT[@]}" rev-parse "origin/$BRANCH")"

if [[ "$LOCAL_SHA" == "$REMOTE_SHA" ]]; then
  exit 0
fi

"${GIT[@]}" reset --hard "origin/$BRANCH"
runuser -u ubuntu -- "$APP_DIR/venv/bin/pip" install --disable-pip-version-check -q -r "$APP_DIR/requirements.txt"
if [[ -d "$APP_DIR/.cache" ]]; then
  chown -R ubuntu:ubuntu "$APP_DIR/.cache"
fi
systemctl restart kelesss-mkdocs.service
logger -t kelesss-art-sync "Updated site from $LOCAL_SHA to $REMOTE_SHA"
