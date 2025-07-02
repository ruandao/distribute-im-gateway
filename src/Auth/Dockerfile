FROM golang:1.24.3

RUN mkdir -p /app/src/Auth
RUN mkdir -p /app/pkg

WORKDIR /app/src/Auth

COPY src/Auth /app/src/Auth
COPY pkg /app/pkg

RUN go mod download




RUN go build -o auth /app/src/Auth

EXPOSE 8800

CMD ["./auth"]