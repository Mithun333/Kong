FROM kong/deck

USER root
 
COPY entrypoint.sh /entrypoint.sh

USER 1001

RUN  chmod +x /entrypoint.sh
 
ENTRYPOINT [ "/entrypoint.sh" ]
