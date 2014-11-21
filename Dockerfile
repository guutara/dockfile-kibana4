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

#Set ENV
#ENV 

# Define mountable directories.
#VOLUME [""]

# Mount elasticsearch.yml config
ADD config/kibana.yml /kibana/config/kibana.yml

# Define working directory.
#WORKDIR

# Define default ENTRYPOINT
ENTRYPOINT ["/kibana/bin/kibana"]

# Define default command.
#CMD [""]

# Expose ports.
#   - 5601: HTTP
EXPOSE 5601
