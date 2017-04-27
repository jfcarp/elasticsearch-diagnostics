FROM openjdk:8
WORKDIR /tmp/
ADD https://github.com/elastic/elasticsearch-support-diagnostics/releases/download/5.11/support-diagnostics-5.11-dist.zip /tmp/
RUN unzip /tmp/support-diagnostics-5.11-dist.zip 
EXPOSE 9200
WORKDIR /tmp/support-diagnostics-5.11
ENTRYPOINT ["/tmp/support-diagnostics-5.11/diagnostics.sh"]
#RUN /tmp/support-diagnostics-5.11/diagnostics.sh --host search-si.mdt.nonprod.aws.cloud.nordstrom.net --port 9200
#RUN /tmp/support-diagnostics-5.11/diagnostics.sh --host search-prod.mdt.prod.aws.cloud.nordstrom.net --port 9200
#CMD ["bash", "diagnostics.sh", "--host 172.22.21.76", "--port 9200"]

