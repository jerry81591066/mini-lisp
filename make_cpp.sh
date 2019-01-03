#!/bin/bash

bison -v -d -o $1.tab.c $1.y
g++ -c -g -I.. $1.tab.c

flex -o $1.yy.c $1.l
g++ -c -g -I.. $1.yy.c

g++ -o $1.o $1.tab.o $1.yy.o -ll
