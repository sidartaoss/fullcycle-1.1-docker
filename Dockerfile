FROM golang:1.18 AS builder

WORKDIR /usr/src/app

COPY go.mod .

ENV GOPROXY https://proxy.golang.org,direct

RUN go mod download

COPY . .

ENV CGO_ENABLED=0

RUN GOOS=linux go build ./app.go


FROM scratch

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/app .

CMD ["/usr/src/app/app"]