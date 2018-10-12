#!/bin/bash

BITCOINCLI=~ravend/bin/raven-cli

$BITCOINCLI getrawmempool | perl -ne '/"([0-9a-f]+)"/ && print "$1\n"' | \
while read i;  do
    $BITCOINCLI getrawtransaction $i
done
