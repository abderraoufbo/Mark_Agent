FROM node:20-slim

WORKDIR /app

# Install OpenClaw globally
RUN npm install -g openclaw

# Copy soul file
COPY soul.md /root/.openclaw/SOUL.md

EXPOSE 18789

# Use a placeholder; we'll update after getting the Render URL
CMD ["openclaw", "gateway", "run", "--webhook-url", "https://mark-agent.onrender.com"]
