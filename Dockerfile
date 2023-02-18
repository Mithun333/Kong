FROM kong/deck

# Create a config directory
RUN mkdir -p /usr/config
WORKDIR /usr/config

COPY --chown=root entrypoint.sh /entrypoint.sh

RUN chmod +x /usr/config/entrypoint.sh
 
ENTRYPOINT ["bash", "/usr/config/entrypoint.sh"]
