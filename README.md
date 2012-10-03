A modest rsync script I wrote to perform weekly backups on a cron job to a remote server. It will use a private key (password-less ssh - google it) to log into the remote server and transfer the files.

Example Cron:
Run at 00:01 every Saturday:

1 0 * * 6 /usr/bin/remote-rsync.sh

Variables
---------

REMOTE_HOST = Target server where files will be pushed for backup.

REMOTE_USER = SSH username to target system.

REMOTE_PORT = SSH port for target system.

KEY = /path/to/private/key.file

LOCAL_PATH = Path to the files on the local server which will be pushed to the target server.

REMOTE_PATH = Remote path on the target server where the files are to be stored.

Switches
--------

-a archive mode; equals -rlptgoD

-u skip files that are newer on the receiver

-v increase verbosity

-e specify the remote shell to use

We then tell rsync to use ssh, declare the port, shake hands with the private key, log in, and transfer the files.