FROM kong/deck
USER root
# Create a config directory
RUN mkdir -p /usr/config
WORKDIR /usr/config

COPY --chown=root entrypoint.sh /usr/config/entrypoint.sh

RUN chmod +x /usr/config/entrypoint.sh
 
ENTRYPOINT ["/usr/config/entrypoint.sh"]
