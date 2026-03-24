FROM agentscope/copaw:latest

# The official image expects config in /app/working and secrets in /app/working.secret
# We'll copy the soul file into the working directory so it's available at startup.
COPY soul.md /app/working/soul.md

# Expose the web UI port
EXPOSE 8088
