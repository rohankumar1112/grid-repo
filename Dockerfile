# Use the official Ubuntu 22.04 image
FROM ubuntu:22.04

# Set noninteractive mode
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    autoconf \
    libtool \
    subversion \
    python3-dev \
    mysql-server \
    libmysqlclient-dev \
    libxerces-c-dev \
    python3-mysqldb \
    python3-pip \
    libcurl4-openssl-dev \
    python3-sphinx \
    libxml2-dev \
    libxslt1-dev \
    doxygen \
    libcppunit-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libcppunit-doc \
    pkg-config \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# Install additional Python packages
RUN pip3 install -U sphinx lxml gevent python-dateutil mixbox pyasn1 pycryptodomex pysmi mysqlclient stix pysnmp

# Reset noninteractive mode
RUN unset DEBIAN_FRONTEND

# Command to run when the container starts
CMD ["/bin/bash"]
