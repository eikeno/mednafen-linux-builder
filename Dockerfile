FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN ["apt", "update"]
RUN ["apt-get", "install", "wget", "build-essential", "zlib1g-dev", "libflac-dev", "autotools-dev", "autoconf", "libasound2-dev", "libjack-dev", "libsdl2-dev", "libmpcdec-dev", "libvorbisidec-dev", "-y"]
COPY ./build_script.sh /build_script.sh
CMD ["/bin/bash"]


