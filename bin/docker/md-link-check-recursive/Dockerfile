# version=1.0.0
#
# usage:
#  docker run --rm -v /my/absolute/local/path:/tmp/.docs caian/md-link-check-recursive
#  docker run --rm -v ${PWD}:/tmp/.docs caian/md-link-check-recursive
#
# creates a container, auto-deletes, binds a local directory to "/tmp/.docs"
#
FROM node:19-buster-slim AS base
LABEL maintainer="Caian Ertl <hi@caian.org>"

ARG BIND_PATH=/tmp/.docs
ENV BIND_PATH $BIND_PATH

WORKDIR ${BIND_PATH}
RUN npm i -g markdown-link-check@3.10.0 \
    && echo "find ${BIND_PATH} -name \*.md -print0 | xargs -0 -n1 markdown-link-check" >> /entrypoint.sh \
    && chmod +x /entrypoint.sh

CMD ["bash", "-c", "/entrypoint.sh"]
