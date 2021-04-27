#!/usr/bin/env bash

npm i
node ./index.js
asciidoctor card.adoc -o card.didact.md
