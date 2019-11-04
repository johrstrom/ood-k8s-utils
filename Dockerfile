FROM busybox

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.1/bin/linux/amd64/kubectl

RUN mv kubectl /bin/kubectl
RUN chmod +x /bin/kubectl

