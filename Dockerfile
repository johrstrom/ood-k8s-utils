FROM alpine:latest

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.1/bin/linux/amd64/kubectl; \
    mv kubectl /bin/kubectl; \
    chmod +x /bin/kubectl;

RUN apk add openssl bash

COPY files /bin

RUN chmod +x /bin/find_host_port; \
    chmod +x /bin/create_passwd; \
    chmod +x /bin/save_passwd_as_secret; \
    chmod +x /bin/create_salt_and_sha1; \
    chmod +x /bin/add_line_to_configmap
