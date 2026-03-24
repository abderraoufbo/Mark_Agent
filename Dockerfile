FROM node:20-slim

# Install necessary system dependencies (optional but safe)
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Verify the installation and print the binary path for debugging
RUN which openclaw  echo "openclaw not found in PATH" && ls -la /usr/local/bin/  true

# Create the configuration directory and copy the soul
RUN mkdir -p /root/.openclaw
COPY soul.md /root/.openclaw/SOUL.md

EXPOSE 18789

# Use the full path to the binary
CMD ["/usr/local/bin/openclaw", "gateway", "run", "--webhook-url", "https://mark-agent.onrender.com"]
