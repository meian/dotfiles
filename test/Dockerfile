FROM mcr.microsoft.com/devcontainers/go:0-1-bullseye

USER vscode

ARG USER=vscode
ARG HOME=/home/vscode
ARG DST=/home/vscode/dotfiles
ARG ILOG="${HOME}/install.log"

WORKDIR $HOME

COPY --chown=vscode . ${DST}

RUN ${DST}/bin/install.sh -d > ${ILOG} 2>&1

ENTRYPOINT bash
