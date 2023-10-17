# This dockerfile was mainly sourced from github.com/Asmilex/raytracing
# as such, it is licensed under the Apache 2.0 license.
FROM dockershelf/latex:full

# https://github.com/Asmilex/Raytracing.git
RUN apt-get update && apt-get install -y make git wget sudo chafa python3-full
RUN wget https://github.com/jgm/pandoc/releases/download/3.1.8/pandoc-3.1.8-1-amd64.deb && dpkg -i pandoc-3.1.8-1-amd64.deb
RUN python3 -m venv /home/.venv
RUN /home/.venv/bin/pip install pandoc-eqnos pandoc-fignos pandoc-tablenos

# Instalar Crimson Pro y Julia Mono
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

# docker build -t lucasfa/pandoc_tfg:1.0 .
