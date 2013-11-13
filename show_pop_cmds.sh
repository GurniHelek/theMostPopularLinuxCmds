#!/bin/bash

printf '%s' "$(echo -e "$(cut -d " " -f1 ~/.bash_history)" | sort | uniq -c | sort -nrk 1)" | sed '/\.\//d'
