#!/usr/bin/env bash

### Check if script is being runned as root ###
if [[ $EUID -ne 0 ]]; then
  _error "This script must be run as root"
  exit 1
fi

DISTRO_TYPE=""

### Private functions ###
_error() {
  echo >&2 "ERROR: $*"
}

_match_etc_issue() {
  local _distro_type="$1"
  shift
  grep -qis "$*" /etc/issue && DISTRO_TYPE="$_distro_type"
}

# The DISTRO_TYPE detection script is based on https://github.com/icy/pacapt
_discover_distro_type() {
  _match_etc_issue "deb" "Debian" && return
  _match_etc_issue "deb" "Ubuntu" && return
  _match_etc_issue "rpm" "CentOS" && return
  _match_etc_issue "rpm" "Fedora" && return

  [[ -z "$DISTRO_TYPE" ]] || return

  if hash apt-get 2>/dev/null; then
    DISTRO_TYPE="deb"
  elif hash yum 2>/dev/null; then
    DISTRO_TYPE="rpm"
  else
    _error "Unable to identify distribution."
    exit 1
  fi
}

### Installation ###
set -eu
echo "# Beginning gime instalation..."
echo "## Checking sqlite instalation..."
case "$DISTRO_TYPE" in
    deb)
        apt-get install -y sqlite3
    ;;
    rpm)
        yum install -y sqlite3
    ;;
esac

echo "## Setting executable permission for gime..."
chmod +x gime
echo "Done."

echo "## Configuring sqlite table..."
mkdir -p /var/gime
sqlite3 -batch /var/gime/data.db "create table saved_data(keyword varchar(64) not null, label varchar(64), data varchar(1024))";
echo "Done."

echo "## Downloading gime binary..."
curl https://raw.githubusercontent.com/silvagpmiguel/gime/main/gime -o /usr/local/bin/gime
echo "Done."

echo "## Setting gime executable permissions..."
chmod +x /usr/local/bin/gime
echo "Done."

echo "# Gime installation complete!"