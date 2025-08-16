#!/bin/bash

from=$1
to=$2

for ((i=from; i<=to; i++)); do
    touch "q${i}.sql"
done