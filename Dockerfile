FROM ubuntu:22.04
RUN mkdir -p /ftproot/ /projects/ /template/
RUN apt-get update
RUN apt-get install -y vsftpd
COPY ./conf/vsftpd.conf /etc/vsftpd.conf
RUN useradd -m ftpuser
RUN echo "ftpuser:passwd" | chpasswd
EXPOSE 21