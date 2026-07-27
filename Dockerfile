FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y procps sysstat bash && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . .
RUN chmod +x *.sh
CMD ["/bin/bash", "-c", "while true; do ./monitor.sh; sleep 30; done"]
