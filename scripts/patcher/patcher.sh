#!/usr/bin/env bash

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

cd $(dirname $0)/nerd-fonts

test -d ../out || mkdir -pv ../out

find ../../../src/IosevkaMatsuri{,Term}/TTF -type f | while read -r filename; do
	filename="$(basename $filename)"

	filepath="../../../src/IosevkaMatsuri/TTF/$filename"
	if [[ "$(echo "${filename%-*}" | grep Term)" != "" ]]; then
		filepath="../../../src/IosevkaMatsuriTerm/TTF/$filename"
	fi

	echo -e "${YELLOW}[*] Building $filename${NC}"

	fontforge -script ./font-patcher "$filepath" -out ../out >/dev/null 2>&1
	outname="$(echo $filename | sed 's/-/ /g' | awk '{print $1}')NerdFont-$(echo $filename | sed 's/-/ /g' | awk '{print $2}')"

	echo -e "${GREEN}[+] Done $outname${NC}"

	mv ../out/$outname "$(dirname $filepath)"/
done

rmdir ../out
