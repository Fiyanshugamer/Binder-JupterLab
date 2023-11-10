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

# Command to run JupyterLab as root
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
