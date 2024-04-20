#!/bin/bash
FIRST_NUMBER=$1
SECOND_NUMBER=$2

if [$FIRST_NUMBER -gt $SECOND_NUMBER]
then
    echo"$FIRST_NUMBER is Greater Than $SECOND_NUMBER"
fi
