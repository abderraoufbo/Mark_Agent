FROM agentscope/copaw:latest

# Copy soul file into the working directory (where CoPaw expects config)
COPY soul.md /app/working/soul.md

# Set environment variables to help with binding and logging
ENV COPAW_HOST=0.0.0.0 \
    COPAW_PORT=8088 \
    PYTHONUNBUFFERED=1

# Override the command to start with explicit host and port
CMD ["copaw", "app", "--host", "0.0.0.0", "--port", "8088"]
