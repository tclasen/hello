FROM alpine AS builder
RUN apk add --no-cache \
    alpine-sdk \
    nasm
WORKDIR /opt/app
COPY . .
RUN make build

FROM alpine AS runner
COPY --from=builder /opt/app/dist/hello.bin .
CMD ["./hello.bin"]
