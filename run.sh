#!/bin/bash

rm -rf ./bin/*
java JackCompiler.Compiler $1
mv *.vm ./bin/
node ./Translator/vmTranslator.js ./bin/
node ./Assembler/assembler.js bin.asm
rm -rf ./bin/*
mv bin.hack ./bin/
rm ./bin.asm
