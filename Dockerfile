FROM docker.elastic.co/logstash/logstash:7.11.0

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

# install input plugins
RUN bin/logstash-plugin install logstash-input-kinesis
RUN bin/logstash-plugin install logstash-filter-json

# install output plugins
RUN bin/logstash-plugin install logstash-output-amazon_es