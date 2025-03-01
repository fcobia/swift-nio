#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the SwiftNIO open source project
##
## Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.txt for the list of SwiftNIO project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

set -eu

function usage() {
  echo "$0 [-u] [-f skipUpToTarget] version"
  echo
  echo "OPTIONS:"
  echo "  -u: Additionally, upload the podspecs as they are generated"
  echo "  -f: Skip over all targets before the specified target"
}

OPTIND=1
upload=false
skip_until=""

while getopts ":uf:" opt; do
  case $opt in
    u)
      upload=true
      ;;
    f)
      skip_until="$OPTARG"
      ;;
    \?)
      usage
      exit 1
      ;;
  esac
done
shift "$((OPTIND-1))"

if [[ $# -eq 0 ]]; then
  usage
  exit 1
fi

version=$1
newline=$'\n'

here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmpfile=$(mktemp -d /tmp/.build_podspecsXXXXXX)
echo "Building podspecs in $tmpfile"

# We have a name transformation here. We want the pod names to be
# SwiftX or CX, but our target names aren't. We add SwiftX to the front
# of all NIO targets, and then remove it in the source files declaration
# if needed.
targets=( $("${here}/list_topsorted_dependencies.sh" -l -r | grep -v "NIOPriorityQueue" | sed 's/^NIO/SwiftNIO/') )

for target in "${targets[@]}"; do
  if [[ "$target" == "_NIO1APIShims" ]]; then
    continue
  fi

  if [[ -n "$skip_until" && "$target" != "$skip_until" ]]; then
    echo "Skipping $target"
    continue
  elif [[ "$skip_until" == "$target" ]]; then
    skip_until=""
  fi

  echo "Building podspec for $target"

  dependencies=()

  while read -r raw_dependency; do
    dependencies+=( "${newline}  s.dependency '$raw_dependency', s.version.to_s" )
  done < <("${here}/list_topsorted_dependencies.sh" -d "${target#Swift}" | grep -v "NIOPriorityQueue" | sed 's/^NIO/SwiftNIO/')

  libraries=""

  if [[ "$target" == "CNIOZlib" ]]; then
    libraries="s.libraries = 'z'"
  fi

  cat > "${tmpfile}/${target}.podspec" <<- EOF
Pod::Spec.new do |s|
  s.name = '$target'
  s.version = '$version'
  s.license = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.summary = 'Event-driven network application framework for high performance protocol servers & clients, non-blocking.'
  s.homepage = 'https://github.com/apple/swift-nio'
  s.author = 'Apple Inc.'
  s.source = { :git => 'https://github.com/apple/swift-nio.git', :tag => s.version.to_s }
  s.documentation_url = 'https://apple.github.io/swift-nio/docs/current/NIO/index.html'
  s.module_name = '${target#Swift}'

  s.swift_version = '5.2'
  s.cocoapods_version = '>=1.6.0'
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '6.0'

  s.source_files = 'Sources/${target#Swift}/**/*.{swift,c,h}'
  ${dependencies[*]-}
  $libraries
end
EOF

  pod repo update # last chance of getting the latest versions of previous pushed pods
  if $upload; then
    echo "Uploading ${tmpfile}/${target}.podspec"
    pod trunk push "${tmpfile}/${target}.podspec" --synchronous
  fi

done
