FROM debian:stable

RUN apt-get update && apt-get install -y graphviz doxygen default-jre texlive-latex-extra make curl && \
    curl -L https://sourceforge.net/projects/plantuml/files/plantuml.1.2019.5.jar/download -o /tmp/plantuml.jar

WORKDIR "/home/workspace"

ENTRYPOINT ["doxygen"]

CMD ["config/Doxyfile"]