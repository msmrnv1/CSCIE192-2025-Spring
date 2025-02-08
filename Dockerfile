FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye

COPY requirements.txt /tmp/pip-tmp/

RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt

RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
    cd /tmp && \
    unzip awscliv2.zip && \
    sudo ./aws/install

# For Intel based machines
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
# For Mac M1,M2,M3 and other arm64 machines
#ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-arm64/

RUN export JAVA_HOME
EXPOSE 4040
