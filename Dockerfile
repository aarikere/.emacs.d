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

COPY fonts/Inconsolata-Bold.ttf /usr/share/fonts/
COPY fonts/Inconsolata-Regular.ttf /usr/share/fonts/
