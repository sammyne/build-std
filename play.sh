#!/bin/bash

#export __CARGO_TESTS_ONLY_SRC_ROOT=`pwd`/rust
#cargo build -Zbuild-std=core,compiler_builtins,alloc,std -vv

export __CARGO_TESTS_ONLY_SRC_ROOT=`pwd`/teaclave-sgx
cargo build -Zbuild-std=core,compiler_builtins,alloc,std -vv
