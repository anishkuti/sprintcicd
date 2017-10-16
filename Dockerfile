FROM openjdk
ADD mule-standalone-3.8.0.zip /opt
RUN cd /opt && unzip mule-standalone-3.8.0.zip
ADD muledemo1.zip /opt/mule-standalone-3.8.0/apps
EXPOSE 8080
RUN rm /opt/mule-standalone-3.8.0.zip
CMD [ "/opt/mule-standalone-3.8.0/bin/mule" ]
