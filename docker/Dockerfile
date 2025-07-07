
# Use Lightweight Ubuntu
FROM ubuntu:20.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools
RUN apt update && apt install -y procps coreutils

# Copy script into container
COPY sys_monitor.sh /usr/local/bin/sys_monitor.sh

# Make it executable
RUN chmod +x /usr/local/bin/sys_monitor.sh

# Set the default command
CMD ["/usr/local/bin/sys_monitor.sh"]
