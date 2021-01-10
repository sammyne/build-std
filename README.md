An example to demonstrate build-std in Cargo.

```
$ rustup install nightly-2021-01-05
$ __CARGO_TESTS_ONLY_SRC_ROOT=`pwd`/rust cargo +nightly-2021-01-05 build --target custom-target.json -Zbuild-std=core,compiler_builtins,alloc,std -vv
```

## For teaclave-sgx

### teaclave-sgx/library
`core`, `proc_macro`, `rust-std-workspace-*` and `stdarch` are copied from `$PWD/rust`.

### Try build

```bash
bash play.sh
```

Error output goes as 

```bash
warning: Patch `rustc-std-workspace-core v1.99.0 (/root/icode.baidu.com/baidu/mssun/build-std/teaclave-sgx/library/rustc-std-workspace-core)` was not used in the crate graph.
Patch `rustc-std-workspace-alloc v1.99.0 (/root/icode.baidu.com/baidu/mssun/build-std/teaclave-sgx/library/rustc-std-workspace-alloc)` was not used in the crate graph.
Patch `rustc-std-workspace-std v1.99.0 (/root/icode.baidu.com/baidu/mssun/build-std/teaclave-sgx/library/rustc-std-workspace-std)` was not used in the crate graph.
Check that the patched package version and available features are compatible
with the dependency requirements. If the patch has a different version from
what is locked in the Cargo.lock file, run `cargo update` to use the new
version. This may also occur with an optional dependency that is not enabled.
error: package ID specification `proc_macro` matched no packages
```

I'm still struggling to figure out why :(
