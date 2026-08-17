#!/bin/bash

OUTPUT=$(./app.sh)

if [ "$OUTPUT" = "Hello from my Jenkins project!" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED"
    echo "Expected: Hello from my Jenkins project!"
    echo "Actual: $OUTPUT"
    exit 1
fi

