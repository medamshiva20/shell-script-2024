#!/bin/bash

PERSONS=("Ramesh" "Suresh" "Mahesh")

echo "First person:${PERSONS[0]}"

echo "All persons: ${PERSONS[@]}"

echo "Number of variables:${#PERSONS[@]}"