FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux \
    && mv datagram-cli-x86_64-linux /usr/local/bin/datagram-cli \
    && chmod +x /usr/local/bin/datagram-cli

ENV DATAGRAM_KEY="8e1f4786c60d4c71a27012b7c4342526"

CMD ["sh", "-c", "datagram-cli run -- -key $DATAGRAM_KEY"]
