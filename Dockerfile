FROM kong/deck
 
COPY entrypoint.sh /entrypoint.sh

RUN chmod 755 entrypoint.sh
 
ENTRYPOINT [ "/entrypoint.sh" ]
