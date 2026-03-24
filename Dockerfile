FROM agentscope/copaw:latest

# Copy your soul file to the expected location (adjust if needed)
COPY soul.md /app/soul.md

# Set environment variables (these will be overridden by Render env vars)
ENV COPAW_SOUL_PATH=/app/soul.md \
    COPAW_TELEGRAM_BOT_TOKEN="8759630523:AAHnwyR2mJDcSTUKzGaY3R6l7ib1yb0NnBQ" \
    COPAW_MODEL=gemini \
    COPAW_GEMINI_API_KEY="AIzaSyC2gbvodoXhjny45QGAxjZNUKorT3WfjXY"

# Expose the port CoPaw uses (default is 8088)
EXPOSE 8088

# The base image already defines a CMD; we don't need to override it
