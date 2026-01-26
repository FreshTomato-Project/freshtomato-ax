#!/bin/sh
find . \( -name "*.asp" -o -name "*.htm" -o -name "*.js" -o -name "*.dict" \) -print0 | xargs -0 enca -L none > en_result.txt
