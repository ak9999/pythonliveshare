# Live Share image built from official Python image
FROM python:slim
# Create a new group, devs
RUN groupadd --gid 10050 devs
# Create a new user, dev
RUN useradd --groups devs --uid 10060 --create-home --shell /bin/bash dev
# Give dev a password
RUN echo 'dev:secret' | chpasswd
# Add dev to sudo group
RUN usermod -a -G sudo dev
# Update package list and install packages
RUN apt-get update
# Install apt-utils and sudo
RUN apt-get install -qy apt-utils sudo > /dev/null
# Install packages needed for VS Code Live Share
RUN apt-get install -qy libssl1.1 libkrb5-3 zlib1g libicu63 > /dev/null
# Run as user dev
USER dev
WORKDIR /home/dev
# Add ~/.local/bin to PATH
ENV PATH "/home/dev/.local/bin/:$PATH"
# Install some Python packages
RUN python -m pip install pytest pytest-watch flake8 --user