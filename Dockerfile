FROM silex/emacs

RUN apt-get update && \
    apt-get install -y \
    	    git \
	    git-lfs \
	    && rm -rf /var/lib/apt/lists/*

RUN git config --global user.name "Adithya Arikere"
RUN git config --global user.email "adithya.arikere@volvo.com"
RUN git config --global alias.cl 'log --oneline -n'
RUN git config --global alias.cd 'diff --compact-summary'

COPY fonts /usr/share/fonts/

RUN echo "deb http://archive.ubuntu.com/ubuntu/ eoan main restricted" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu/ eoan-updates main restricted" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu/ eoan universe" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu/ eoan-updates universe" >> /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y \
    	    make \
	    cmake \
	    clang \
	    clangd \
	    ccls \
	    python3 \
	    python3-setuptools \
	    python3-pip \
	    && rm -rf /var/lib/apt/lists/* 

RUN pip3 install python-language-server