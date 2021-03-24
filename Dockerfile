FROM centos:7

RUN yum install wget sudo -y

RUN echo -e "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN yum install openssh-clients openssh-server -y
RUN yum install git curl python36 yum-utils initscripts -y
RUN ssh-keygen -A
RUN mkdir /root/.kube
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl

COPY client.crt /root/
COPY client.key /root/
COPY ca.crt /root/
COPY config /root/.kube
RUN mkdir /root/task4/
COPY sshd_config /etc/ssh/ssh_config
EXPOSE 80
RUN echo root:pass | chpasswd
CMD ["/usr/sbin/sshd" , "-"D] && /bin/bash

