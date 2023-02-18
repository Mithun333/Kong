FROM kong/deck

COPY --chown=root entrypoint.sh /entrypoint.sh

RUN  chmod +x /entrypoint.sh
 
ENTRYPOINT [ "/entrypoint.sh" ]
