FROM golang:1.24.3

RUN mkdir -p /app/src/Comet
RUN mkdir -p /app/pkg

WORKDIR /app/src/Comet

COPY src/Comet /app/src/Comet
COPY pkg /app/pkg

RUN go mod download




RUN go build -o comet /app/src/Comet

EXPOSE 8900

CMD ["./comet"]
