#!/bin/sh
# The server sends its handshake message.
# The service runs the challenge in nsjail for each connection and greets the player first.
# The greeting is binary (random key material), so only its presence is checked.
[ "$( (sleep 4) | curl -sS --max-time 6 telnet://challenge:1337 2>/dev/null | wc -c)" -gt 16 ]
