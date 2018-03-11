#!/usr/bin/env sh

# run from fasto main directory

test_name="tests/$1"

echo "fun int main () = " > "$test_name.fo"

if [ "$2" = "-err" ]; then
  echo -n "" > "$test_name.err"
else
  echo -n "" > "$test_name.in"
  echo -n "" > "$test_name.out"
fi
