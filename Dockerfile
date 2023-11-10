# Use the official Ubuntu 20.04 image
FROM ubuntu:20.04

# Set the root user
USER root

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y \
        sudo \
        python3 \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install JupyterLab
RUN pip3 install jupyterlab

# Expose the JupyterLab port
EXPOSE 8888

# Command to run JupyterLab as root
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
