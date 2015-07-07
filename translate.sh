#!/bin/bash

GOOGLE_URL="http://translate.google.com/translate_tts?ie=UTF-8&q="
USER_AGENT="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13+ (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2"
echo "Google Translate Text to Speech by @mattarnster"
echo "Translating: $1 into $2"

wget -O translated.mp3 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13+ (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2" "${GOOGLE_URL}${1} &tl=${2}"

mplayer translated.mp3

