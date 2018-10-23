#!/bin/bash

for nameserver in $(host -t ns $1 | cut -d " " -f4);do
	host -l $1 $nameserver | grep "has address" | awk '{ print $1 " -> " $4 }'
done
