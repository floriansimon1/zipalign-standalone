FROM ubuntu:23.04

WORKDIR /zipalign

COPY . .

RUN apt update
RUN apt install -y build-essential cmake

RUN ./scripts/copy-sources.sh
RUN ./scripts/generate-makefiles.sh
RUN ./scripts/build-tool.sh

