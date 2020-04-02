FROM gcr.io/k8s-skaffold/skaffold:latest

RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
RUN echo "deb https://dl.bintray.com/loadimpact/deb stable main" | tee -a /etc/apt/sources.list
RUN apt update
RUN apt install maven git openjdk-11-jdk k6 influxdb bsdmainutils -y