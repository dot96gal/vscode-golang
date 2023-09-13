FROM golang:1.21.1-bullseye

WORKDIR /workspace

# install dev tools
RUN apt-get update \
  && apt-get install -y \
  build-essential \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# setup go module
COPY go.mod .
# COPY go.sum .
RUN go mod download

# install go tools
RUN go install golang.org/x/tools/gopls@latest
