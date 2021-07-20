#!/bin/sh

rm -f daisydiff.htm
java -jar \
    /tmp/daisydiff/target/daisydiff-1.2-NX5-SNAPSHOT-jar-with-dependencies.jar \
    $@
test -f daisydiff.htm && cat daisydiff.htm
