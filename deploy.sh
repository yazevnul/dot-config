#!/usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf 'Configuring...\n'

printf 'Configuring bash...\n'
$DIR/bash/deploy.sh
printf 'Configuring bash...DONE\n'

printf 'Configuring Tmux...\n'
$DIR/tmux/deploy.sh
printf 'Configuring Tmux...DONE\n'

printf 'Configuring Vim...\n'
$DIR/vim/deploy.sh
printf 'Configuring Vim...DONE\n'

printf 'Configuring Python...\n'
$DIR/python/deploy.sh
printf 'Configuring Python...DONE\n'

printf 'Configuring...DONE\n'

unset DIR