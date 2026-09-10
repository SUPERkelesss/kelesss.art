#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/home/ubuntu/kelesss.art"
BRANCH="main"
LOCK_FILE="/run/lock/kelesss-art-sync.lock"

exec 9>"$LOCK_FILE"
flock -n 9 || exit 0

cd "$APP_DIR"
GIT=(git -c safe.directory="$APP_DIR")
timeout 45s "${GIT[@]}" -c http.lowSpeedLimit=1000 -c http.lowSpeedTime=20 fetch --quiet origin "$BRANCH" || exit 0
LOCAL_SHA="$("${GIT[@]}" rev-parse HEAD)"
REMOTE_SHA="$("${GIT[@]}" rev-parse "origin/$BRANCH")"

if [[ "$LOCAL_SHA" == "$REMOTE_SHA" ]]; then
  exit 0
fi

"${GIT[@]}" reset --hard "origin/$BRANCH"
"$APP_DIR/venv/bin/pip" install --disable-pip-version-check -q -r requirements.txt
systemctl restart kelesss-mkdocs.service
logger -t kelesss-art-sync "Updated site from $LOCAL_SHA to $REMOTE_SHA"
