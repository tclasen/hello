FROM alpine AS runner
RUN apk add --no-cache \
    python3
WORKDIR /opt/app
COPY . .
CMD ["python3", "./src/hello.py"]
