#!/usr/bin/env bash

printf "\n"

printf "Input your first number: "
read FIRST

printf "Input your second number: "
read SECOND

if ! [[ $FIRST =~ ^-?[0-9]+$ ]] || ! [[ $SECOND =~ ^-?[0-9]+$ ]]; then
    printf "Unknown number\n\n"
    exit 1
fi

printf "What do you want to do (+|-|*|/): "
read ACTION

case "$ACTION" in
    "+") RESULT=$(($FIRST+$SECOND)) ;;
    "-") RESULT=$(($FIRST-$SECOND)) ;;
    "*") RESULT=$(($FIRST*$SECOND)) ;;
    "/") RESULT=$(printf "%.0f" $(($FIRST/$SECOND))) ;;
    *)
        printf "Unknown action\n\n"
        exit 1
    ;;
esac

echo "Result: $RESULT"

printf "\n"