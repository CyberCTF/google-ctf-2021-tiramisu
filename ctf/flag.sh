#!/bin/sh
# Places the player's flag (CTF_FLAG_MAIN, given by the launcher) where the challenge reads it
# (/chroot/flag, in the volume over that directory); without one (CI, a run by hand) the development flag.
dev='CTF{dev-google-ctf-2021-tiramisu}'
v="${CTF_FLAG_MAIN:-$dev}"
printf '%s\n' "$v" > /chroot/flag
chmod 444 /chroot/flag
