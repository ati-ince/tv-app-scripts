FROM i386/ubuntu:14.04
MAINTAINER ati-ince "atahir.ince@gmail.com"

#klasörleri hazırlayalım
WORKDIR /home/
RUN mkdir toolchain && mkdir autobuild 
WORKDIR /home/autobuild 
RUN mkdir Projects && pwd



#carry local file to docker image
#WORKDIR /home/autobuild/Projects
ADD ./Environments/.bashrc /root/.bashrc
#ADD ./Environments/all_toolchain /home/toolchain #iptal... artık Projects load ile çekiyoruz... 
ADD ./Environments/keys /home/autobuild/Projects/keys

#links and adjust the file
CMD = ["ln -s /home/Projects/Toolchains/mips-4.3/bin /home/toolchain/ToolchainLink"]

#environment degişkenleri ve  ayarlar
#export LC_CTYPE=en_US.UTF-8 
#ENV LC_CTYPE en_US.UTF-8 
CMD = ["export LC_CTYPE=en_US.UTF-8"]
#bazısı hata veriyor iptal edelim... #
#ENV LC_ALL en_US.UTF-8
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US.UTF-8

#eksik paket kuralım
RUN apt-get -y update
#make hata çözümü, eksikmiş. 
RUN apt-get install -y make
# make[5]: ar: Command not found hatası için... 
RUN apt-get install -y binutils 
# make[5]: gcc: Command not found   -> /usr/bin/gcc bulunmuyordu image da... , ekleyince 4.8 den baya bir sey eklenmiş oldu. 
RUN apt-get install -y build-essential
# make[3]: python: Command not found  -> 2.7.6 eksik onu kuruyoruz... py3 değil. python --version geri donuş vermiyordu şimdi 2.7.6 veriyor geri donusu...
RUN apt-get install -y python
# others...
RUN apt-get install -y nano && \
    apt-get install -y bc && \
     apt-get install -y subversion
RUN apt-get install -y dos2unix 
RUN apt-get install -y fakeroot
RUN apt-get install -y squashfs-tools
RUN apt-get install -y rar unrar
#MIPS hatası 32-64 bit çözümü için aşağıdakini yapalım.... 
RUN apt-get install -y mtd-utils  
#cp  /usr/sbin/mkfs-ubifs /home/yazilim/Projects/Coremax_M1_SHARED_PRJ/trunk/source/Supernova/target/tools 
#Altına kopyalayıp degiştirdiğimde sorunu çözdü :) 
RUN rm /bin/sh && \
    ln -s /bin/bash /bin/sh 
#çalışma alanı finally...
WORKDIR /home/
ENTRYPOINT ["/bin/bash","-c"]