# This dockerfile was mainly sourced from github.com/Asmilex/raytracing
# as such, it is licensed under the Apache 2.0 license.

FROM dockershelf/latex:full
LABEL maintainer="lucaslanzarote@gmail.com"

RUN apt-get update && apt-get upgrade && \
    apt-get install make git wget sudo chafa python3-pip && \
    apt-get install pandoc
# RUN wget https://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-1-amd64.deb && dpkg -i pandoc-2.18-1-amd64.deb

RUN pip install pandoc-eqnos pandoc-fignos pandoc-tablenos --break-system-packages && \
    ln -s /usr/bin/python3 /usr/bin/python

RUN cd /usr/share/fonts/opentype && \
    # Crimson Pro
    mkdir crimson-pro && \
    cd crimson-pro && \
    wget https://github.com/Fonthausen/CrimsonPro/raw/master/fonts/otf/CrimsonPro-Regular.otf && \
    wget https://github.com/Fonthausen/CrimsonPro/raw/master/fonts/otf/CrimsonPro-Italic.otf && \
    wget https://github.com/Fonthausen/CrimsonPro/raw/master/fonts/otf/CrimsonPro-Bold.otf && \
    # Julia Mono
    cd /usr/share/fonts/truetype && \
    mkdir julia-mono && \
    cd julia-mono && \
    wget https://github.com/cormullion/juliamono/raw/master/JuliaMono-Regular.ttf && \

    fc-cache -f -v

WORKDIR /data
ENTRYPOINT ["make"]

# docker build -t lucasfa/pandoc_tfg:self_built .
