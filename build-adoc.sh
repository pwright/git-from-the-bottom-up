#!/usr/bin/env bash

while read p; do

kramdoc --format=GFM --output=$p.adoc --wrap=ventilate $p

echo -e ":self: card.didact.md\n[subs="attributes+"]\n++++\ninclude::assets/plain-start.html[]\n++++\n$(cat $p.adoc)" > $p.adoc


done <list.txt