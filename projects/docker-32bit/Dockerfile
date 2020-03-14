FROM i386/ubuntu:14.04

#eksik paket kuralım
RUN apt-get update 


#klasörleri hazırlayalım
WORKDIR /home/
RUN mkdir toolchain \
     mkdir autobuild 

COPY home/yazilim/Projects/Environments/* /home/toolchain
