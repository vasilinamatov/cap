FROM ubuntu:16.04
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN apt-get install lxc
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev \
    pip3 install flask
COPY ./requirements.txt /requirements.txt
WORKDIR /
RUN pip3 install -r requirements.txt
COPY . /
ENTRYPOINT [ "python3" ]
CMD [ "app/app.py" ]