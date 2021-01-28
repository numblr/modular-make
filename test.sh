#!/bin/bash

rm -rf repo/*
cd parent

echo ""
echo "Clean"

make clean
make target=touch-version

echo ""
echo "Make version 0.0.1"

make

if [[ $(find ../repo -type f | grep 0.0.1 | wc -l) -ne 3 ]]; then
  echo "Did not find expected distributions in repo:"
  ls ../repo
  exit
fi

echo ""
echo "Set moulde one version to 0.0.2"

sleep 1
echo "0.0.2" > ../module_one/version.txt

echo ""
echo "Make version 0.0.2"

make

if [[ $(find ../repo -type f | grep 0.0.1 | wc -l) -ne 1 && $(find ../repo -type f | grep 0.0.2 | wc -l) -ne 2 ]]; then
  echo "Did not find expected distributions in repo after updating version of module_one:"
  ls ../repo
  exit
fi

echo ""
echo "Set moulde three version to 0.0.2"

sleep 1
echo "0.0.2" > ../module_three/version.txt

echo ""
echo "Make version 0.0.2"

make

if [[ $(find ../repo -type f | grep 0.0.2 | wc -l) -ne 1 && $(find ../repo -type f | grep 0.0.3 | wc -l) -ne 2 ]]; then
  echo "Did not find expected distributions in repo after updating version of module_three:"
  ls ../repo
  exit
fi

echo ""
echo "Clean up"

echo "0.0.1" > ../module_one/version.txt
echo "0.0.1" > ../module_two/version.txt
echo "0.0.1" > ../module_three/version.txt

make clean
make target=touch-version
rm -rf ../repo/*
