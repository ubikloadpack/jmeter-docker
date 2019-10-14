LABEL maintainer="UbikLoadPack"

ARG JAVA_VERSION="jdk8u222-b10"

FROM adoptopenjdk/openjdk8:$JAVA_VERSION

ARG MIRROR="https://www-eu.apache.org/dist" 
ARG JMETER_VERSION="5.1.1"
	
ENV JMETER_HOME /opt/apache-jmeter-${JMETER_VERSION}
ENV PATH $PATH:${JMETER_HOME}/bin

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN set -x \
	&& cd /tmp/ \
	&& curl --location --silent --show-error --output apache-jmeter-${JMETER_VERSION}.tgz ${MIRROR}/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz \
	&& curl --location --silent --show-error --output apache-jmeter-${JMETER_VERSION}.tgz.sha512 ${MIRROR}/jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz.sha512 \
	&& sha512sum -c apache-jmeter-${JMETER_VERSION}.tgz.sha512 \
	&& mkdir -p /opt/ \
	&& tar x -z -f apache-jmeter-${JMETER_VERSION}.tgz -C /opt \
	&& rm -R -f apache*

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["jmeter", "--?"]