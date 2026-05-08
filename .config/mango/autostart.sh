#!/usr/bin/env bash

emacs --daemon &
gammastep -l 56:27 -t 6500:2500 & 
noctalia-shell &
