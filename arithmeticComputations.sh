#! /bin/bash/ -x

read -p "Enter First Number :- " a
read -p "Enter Second Number :- " b
read -p "Enter Third Number :- " c

firstOperation=$(($a + $b * $c))

secondOperation=$(($a * $b + $c))

