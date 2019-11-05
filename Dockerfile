FROM alpine:latest

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.1/bin/linux/amd64/kubectl; \
    mv kubectl /bin/kubectl; \
    chmod +x /bin/kubectl;

RUN apk add openssl bash

COPY files/create_passwd /bin/create_passwd
RUN chmod +x /bin/create_passwd

COPY files/save_passwd_as_secret /bin/save_passwd_as_secret
RUN chmod +x /bin/save_passwd_as_secret

COPY files/create_salt_and_sha1 /bin/create_salt_and_sha1
RUN chmod +x /bin/create_salt_and_sha1

COPY files/find_host_port /bin/find_host_port
RUN chmod +x /bin/find_host_port
