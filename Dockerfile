#
# Kibanah Dockerfile
#
#

# Pull base image.
FROM dockerfile/java:oracle-java7

# Install Kibana
RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-BETA2.tar.gz && \
  tar xvzf kibana-4.0.0-BETA2.tar.gz && \
  rm -f kibana-4.0.0-BETA2tar.gz && \
  mv /tmp/kibana-4.0.0-BETA2 /kibana

#ENV
ENV ES-HOST "localhost"

# Define mountable directories.
#VOLUME ["/data"]

# Mount elasticsearch.yml config
ADD config/kibana.yml /kibana/config/kibana.yml

# Define working directory.
#WORKDIR /data

# Define default command.
CMD ["/kibana/bin/kibana"]

# Expose ports.
#   - 5601: HTTP
EXPOSE 5601
