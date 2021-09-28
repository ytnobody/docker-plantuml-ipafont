FROM openjdk:18-slim-buster
MAINTAINER ytnobody <ytnobody@gmail.com>

ARG PLANTUML_VERSION

WORKDIR /

RUN apt-get update && apt-get install -y --no-install-recommends wget fonts-ipafont libfreetype6-dev libfreetype6 libfontconfig1 graphviz && rm -rf /var/lib/apt/lists/*
RUN wget https://sourceforge.net/projects/plantuml/files/$PLANTUML_VERSION/plantuml.$PLANTUML_VERSION.jar/download -O plantuml.jar

ENTRYPOINT [ "java", "-Djava.awt.headless=true", "-jar", "plantuml.jar", "-p" ]
CMD [ "-tsvg" ] 