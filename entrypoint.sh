#!/bin/bash
set -e
echo "START Running Jmeter on `date`"
exec jmeter "$@"
echo "END Running Jmeter on `date`"