# 🚀 DatagramNode-Docker

A Docker container to easily run a Datagram Node with minimal setup and configuration.

## 📋 Prerequisites

Before running the Datagram Node, you need to obtain a license key:

1. **Login to Datagram Dashboard**: Visit [https://dashboard.datagram.network?ref=163223712](https://dashboard.datagram.network?ref=163223712)
2. **Get Your License Key**: 
   - Navigate to **Dashboard** → **Wallet** → **Licenses**
   - Copy your license key

## 🐳 Running the Node

You have two options to run the Datagram Node:

### Option 1: Using Pre-built Image (Recommended)

The easiest way to get started is using the pre-built Docker image:

```bash
docker run -d \
  --name datagram-node \
  --restart unless-stopped \
  -e DATAGRAM_KEY="your_license_key_here" \
  docker.io/pranavkdileep/datagramnodedocker:latest
```

**Replace `your_license_key_here` with your actual license key from the dashboard.**

### Option 2: Build from Source

If you prefer to build the image locally:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/pranavkdileep/DatagramNode-Docker
   cd DatagramNode-Docker
   ```

2. **Build the Docker image**:
   ```bash
   docker build -t datagram-node .
   ```

3. **Run the container**:
   ```bash
   docker run -d \
     --name datagram-node \
     --restart unless-stopped \
     -e DATAGRAM_KEY="your_license_key_here" \
     datagram-node
   ```

## 🔧 Configuration

The container accepts the following environment variables:

| Variable | Description | Required | Default |
|----------|-------------|----------|---------|
| `DATAGRAM_KEY` | Your Datagram license key | ✅ Yes | `8e1f4786c60d4c7127012b7c4342526` |

## 📊 Monitoring

### Check Container Status
```bash
docker ps
```

### View Container Logs
```bash
docker logs datagram-node
```

### Follow Live Logs
```bash
docker logs -f datagram-node
```

## 🛠️ Management Commands

### Stop the Node
```bash
docker stop datagram-node
```

### Start the Node
```bash
docker start datagram-node
```

### Restart the Node
```bash
docker restart datagram-node
```

### Remove the Container
```bash
docker rm -f datagram-node
```

## 🐛 Troubleshooting

### Common Issues

1. **Invalid License Key**: Ensure you've copied the correct license key from the dashboard
2. **Container Won't Start**: Check the logs using `docker logs datagram-node`
3. **Network Issues**: Ensure your firewall allows outbound connections

### Getting Help

If you encounter issues:
- Check the container logs first
- Verify your license key is correct
- Ensure Docker is running properly

## 📝 Technical Details

- **Base Image**: `debian:bullseye-slim`
- **Architecture**: x86_64 Linux
- **Binary Source**: [Datagram CLI Releases](https://github.com/Datagram-Group/datagram-cli-release/releases)

## 🔗 Links

- [Datagram Dashboard](https://dashboard.datagram.network?ref=163223712)
- [Pre-built Docker Image](https://hub.docker.com/r/pranavkdileep/datagramnodedocker)
- [Datagram CLI Repository](https://github.com/Datagram-Group/datagram-cli-release)

## ⚖️ License

This project is provided as-is for running Datagram nodes. Please refer to Datagram's terms of service for usage guidelines.