#!/bin/bash

function set_bg_count(){
    local stopped=$(jobs -sp | wc -l)
    local running=$(jobs -rp | wc -l)
    ((running+stopped)) && echo -n "[${stopped}]"
    #(stopped) && echo -n "[${stopped}]"
}
