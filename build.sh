#!/bin/bash
echo "Starting Security Scan..."
if grep -q "password =" *.txt 2>/dev/null; then
    echo "CRITICAL: Hardcoded password found! Failing build."
    exit 1
else
    echo "Scan Passed: No obvious secrets found."
    exit 0
fi
