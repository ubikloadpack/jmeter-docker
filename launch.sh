#!bin/bash
export timestamp=$(date +%Y%m%d_%H%M%S) && \
export jmeter_path="home/data" && \
docker-compose run --rm \
	jmeter \
	-n \
	-t ${jmeter_path}/<Name of the Apache Jmeter Test Case> \
	-l ${jmeter_path}/tmp/result_${timestamp}.jtl \
	-j ${jmeter_path}/tmp/jmeter_${timestamp}.log 
