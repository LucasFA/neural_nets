# This dockerfile was mainly sourced from github.com/Asmilex/raytracing
# as such, it is licensed under the Apache 2.0 license.
FROM asmilex/raytracing

WORKDIR /data
ENTRYPOINT ["make"]

# docker build -t lucasfa/pandoc_tfg:1.0 .
