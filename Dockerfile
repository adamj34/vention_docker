FROM alpine:3.20

ARG ANSIBLE_VERSION

RUN apk add --no-cache \
    python3 \
    openssh-client \
    sshpass \
    pipx \
    && pipx install ansible-core==${ANSIBLE_VERSION} 

RUN echo "This is a test file" > /home/grab_this.txt

WORKDIR /ansible

ENTRYPOINT ["/root/.local/bin/ansible-playbook"]

CMD ["--version"]
