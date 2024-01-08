FROM golang:alpine3.19 AS step1
WORKDIR /golang_challenge
COPY fullcyclerocks.go .
RUN go env -w GO111MODULE=off
RUN go build -o fullcyclerocks .
CMD ./fullcyclerocks