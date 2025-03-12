FROM golang:1.23

WORKDIR /11final-docker

COPY go.mod go.sum ./

RUN go mod download

COPY *.go tracker.db ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /11sprint-final-app

CMD ["/11sprint-final-app"]
