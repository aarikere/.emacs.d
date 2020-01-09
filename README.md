# .emacs.d
My personal emacs config

# Docker
To build, run `docker build . -t emacs-personal --network=host` while in
the folder

To run the image with a GUI, run `docker run -it --rm --network=host -e
DISPLAY -v /mnt/home/<username>/:/root/ -v /tmp/.X11-unix:/tmp/.X11-unix
emacs-personal`
