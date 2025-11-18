#!/bin/zsh
setopt EXTENDED_GLOB

sed '/^\s*$/ d' src/* >| ww-all.txt
sed '/^\s*$/ d' src/(^(95-receipt)) >| ww.txt
sed '/^\s*$/ d' commonname/* >| wwcommon.txt
