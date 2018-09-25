#!/bin/bash


order

Drow

# シャッフル関数
shuffle() {
local i tmp size max rand

size=${#array[*]}
max=$(( 32768 / size * size ))

for ((i=size-1; i>0; i--)); do
while (( (rand=$RANDOM) >= max )); do :; done
rand=$(( rand % (i+1) ))
tmp=${array[i]} array[i]=${array[rand]} array[rand]=$tmp
done
}



shuffle

Pdrow

Cdrow

Check

