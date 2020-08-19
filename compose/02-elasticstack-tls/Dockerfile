ARG VERSION=7.9.0
FROM docker.elastic.co/elasticsearch/elasticsearch:${VERSION}

USER root

COPY --chown=elasticsearch:root src/ /

ENV ELASTIC_USERNAME='' \
    ELASTIC_PASSWORD='' \
    xpack.security.authc.realms.file.file1.order=0

RUN chmod +x /usr/share/custom/*.sh

USER elasticsearch

ENTRYPOINT ["/tini", "--", "/usr/share/custom/entrypoint.sh"]
CMD ["/usr/local/bin/docker-entrypoint.sh", "eswrapper"]