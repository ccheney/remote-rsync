#!/bin/sh

# connection info
REMOTE_HOST=shell.example.tld
REMOTE_USER=username
REMOTE_PORT=22

# path to private key
KEY=key

# path to pull files from
LOCAL_PATH=/var/www/

# path to push files to
REMOTE_PATH=/backup

# start the backup
rsync -au -v -e 'ssh -p '$REMOTE_PORT' -i '$KEY'' $LOCAL_PATH $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH