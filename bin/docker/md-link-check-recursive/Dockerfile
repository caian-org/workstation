# version=1.0.0
#
# usage:
#  docker run --rm -v /my/absolute/local/path:/tmp/.docs caian/md-link-check-recursive
#  docker run --rm -v ${PWD}:/tmp/.docs caian/md-link-check-recursive
#
# creates a container, auto-deletes, binds a local directory to "/tmp/.docs"
#
FROM node:18.14.1-bullseye-slim@sha256:95a5c276caa04d21b8071c1774f3a3cdb6012877b1a0bd2a5b294a0afdc518f1 AS base
LABEL maintainer="Caian Ertl <hi@caian.org>"

ARG BIND_PATH=/tmp/.docs
ENV BIND_PATH $BIND_PATH

WORKDIR ${BIND_PATH}
RUN npm i -g markdown-link-check@3.10.0 \
    && echo "find ${BIND_PATH} -name \*.md -print0 | xargs -0 -n1 markdown-link-check" >> /entrypoint.sh \
    && chmod +x /entrypoint.sh

CMD ["bash", "-c", "/entrypoint.sh"]
