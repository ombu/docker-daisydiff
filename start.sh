#!/bin/sh

rm -rf out && mkdir out

java -jar \
    /tmp/daisydiff/target/daisydiff-1.2-NX5-SNAPSHOT-jar-with-dependencies.jar \
    $@ \
    --file=out/daisydiff.htm

if [ -f out/daisydiff.htm ]; then
    cat out/daisydiff.htm
    for f in css images js; do
        cp -r /tmp/daisydiff/$f out
    done
fi
