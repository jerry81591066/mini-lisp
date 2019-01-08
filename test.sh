#!/bin/bash

vim -O test_data/$1.lsp <(./lisp.o < test_data/$1.lsp)
