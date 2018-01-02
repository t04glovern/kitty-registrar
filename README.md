# Kitty Registrar

[![Build Status](https://travis-ci.org/t04glovern/kitty-registrar.svg?branch=master)](https://travis-ci.org/t04glovern/kitty-registrar)
[![Current Crates.io Version](https://img.shields.io/crates/v/rocket.svg)](https://crates.io/crates/rocket)

Kitty Registrar is a frontend for cat fostering written in Rust.

## Building

### Nightly

Rocket requires a nightly version of Rust as it makes heavy use of syntax extensions. This means that the [first two unwieldy lines in the introductory](https://rocket.rs/guide/getting-started/#installing-rust) example above are required.

Once you have rustup installed, run the following:

`$ rustup default nightly-2017-12-21`

If you prefer to set the version to just this project, run the following:

`$ rustup override set nightly-2017-12-21`

### kitty-registrar

Run the following to install the cargo dependencies:

`$ rustup update && cargo update`

The simply run the following to start the web service

`$ cargo run`

## Testing

To test Rocket, simply run `./scripts/test.sh` from the root of the source tree. This will build and test the `kitty-registrar` build. This is the script that gets run by Travis CI. To test a crate individually, run `cargo test --all-features`.