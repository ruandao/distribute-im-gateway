FROM golang:1.24.3 AS builder
WORKDIR /app/src/Auth

RUN mkdir -p /app/src/Auth
RUN mkdir -p /app/pkg

COPY src/Auth/go.mod src/Auth/go.sum /app/src/Auth/
COPY src/Auth /app/src/Auth
COPY pkg /app/pkg

RUN go mod download
RUN go build -o auth /app/src/Auth


# 运行阶段
FROM alpine:3.18
WORKDIR /app
COPY --from=builder /app/src/Auth/auth .
EXPOSE 8800
CMD ["./auth"]