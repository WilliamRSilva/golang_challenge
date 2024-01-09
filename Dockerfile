
#Step1

FROM golang:alpine3.19 AS step1
WORKDIR /golang_challenge
COPY fullcyclerocks.go .
RUN go env -w GO111MODULE=off
RUN go build -o fullcyclerocksapp .
CMD ./fullcyclerocksapp

#Step2

FROM scratch 
WORKDIR /golang_challenge
COPY --from=step1 /golang_challenge/fullcyclerocksapp /golang_challenge_final/
