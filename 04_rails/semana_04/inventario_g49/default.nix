# { pkgs ? import <nixpkgs> {} }:with pkgs;
# with stdenv;
# let
#   gems = bundlerEnv {
#     name = "gems-for-some-project";
#     gemdir = ./.;
#   };
# in mkShell {
#   packages = [ gems gems.wrappedRuby ];
#    buildInputs = [
#     postgresql
#     ruby bundler rake nodejs yarn python
#     autoconf cmake coreutils-full gcc10 gnumake gnupg
#     git git-lfs git-secrets gitAndTools.delta
#     bat bench binutils-unwrapped curl glances pkg-config
#     lzma time vagrant vim wget which
#     # rubyPackages.mysql2 rubyPackages.sassc
#     # rubyPackages.pry-byebug rubyPackages.pry rubyPackages.rubocop-performance
#     aws imagemagick7 jq libpcap libressl libsass libxml2 libxslt v8
#     libmysqlclient mariadb redis sqlite
#     chromedriver phantomjs2
#     pythonPackages.jq pythonPackages.pytest
#     ansible docker
#   ] ++ lib.optionals isDarwin [
#     apple_sdk.CoreFoundation apple_sdk.CoreServices apple_sdk.Security
#     libiconv
#   ];
# }


{ pkgs ? import <nixpkgs> {} }:
with pkgs;
with stdenv;
let
  pkgs = import (builtins.fetchGit {
    # Descriptive name to make the store path easier to identify
    name = "my-old-revision";
    url = "https://github.com/NixOS/nixpkgs/";
    ref = "refs/heads/nixpkgs-unstable";
    rev = "84f318e323989435d5dd54b4038b0af728f20c85";
  }) {};
  # builtins.trace {pkgs};
  # myPkg = pkgs.ruby_2_4;
  # ruby = pkgs.ruby_2_4;
  myPkg = pkgs.ruby_2_4;
  # ruby = miPkg.ruby_2_4;
  gems = bundlerEnv {
    name="karl";
    gemdir = ./.;
  };
in
  mkDerivation {
  # mkShell { packages = [ gems gems.wrappedRuby ]; }
  name = "less_site";
  buildInputs = [
    postgresql
    ruby bundler rake nodejs yarn python
    autoconf cmake coreutils-full gcc10 gnumake gnupg
    git git-lfs git-secrets gitAndTools.delta
    bat bench binutils-unwrapped curl glances pkg-config
    lzma time vagrant vim wget which
    # rubyPackages.mysql2 rubyPackages.sassc
    # rubyPackages.pry-byebug rubyPackages.pry rubyPackages.rubocop-performance
    aws imagemagick7 jq libpcap libressl libsass libxml2 libxslt v8
    libmysqlclient mariadb redis sqlite
    chromedriver phantomjs2
    pythonPackages.jq pythonPackages.pytest
    ansible docker
  ] ++ lib.optionals isDarwin [
    apple_sdk.CoreFoundation apple_sdk.CoreServices apple_sdk.Security
    libiconv
  ];
}