ARG IMAGE=intersystemsdc/iris-community
FROM $IMAGE

WORKDIR /opt

COPY Analytics /opt/Analytics

COPY iris.script /tmp/iris.script

EXPOSE 8080
EXPOSE 1972
EXPOSE 52773


# run iris and script
RUN iris start IRIS \
        && iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly


