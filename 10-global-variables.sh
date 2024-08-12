#!/bin/bash

NUM=200
getNUM(){

    NUM=100 #local variables
    echo "$NUM -inside function"
}

getNUM
echo "$NUM -outside function" #global variables