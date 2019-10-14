#!/bin/bash
echo "START Running Apache JMeter on `date`"
exec jmeter "$@"
echo "END Running Apache JMeter on `date`"