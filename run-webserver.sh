#!/bin/bash


:;while true; do { printf 'HTTP/1.0 200 OK\r\nContent-Length: %d\r\n\r\n' "$(wc -c < index.html)"; cat index.html; } | nc -l -p 8080 -q 1; done
