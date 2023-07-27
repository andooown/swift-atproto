#! /bin/bash

if [ ! -e "gyb" ]; then
  mkdir "gyb"
  curl "https://raw.githubusercontent.com/apple/swift/master/utils/gyb.py" -o "gyb/gyb.py"
  curl "https://raw.githubusercontent.com/apple/swift/master/utils/gyb" -o "gyb/gyb"
  chmod +x gyb/gyb
fi

ROOT_DIR=$(pwd)

./gyb/gyb "$ROOT_DIR/Sources/ATProtoXRPC/Entities/Union.swift.gyb" -o "$ROOT_DIR/Sources/ATProtoXRPC/Entities/Union.generated.swift" --line-directive ""

