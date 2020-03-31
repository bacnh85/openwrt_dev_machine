FROM archlinux:latest
ARG UID=1000
ARG GID=1000
ARG UNAME=bacnh

# Install arch packages
RUN pacman --noconfirm --needed -Syu bash pacman-contrib \
	bc bin86 binutils bzip2 cdrkit core/which diffutils \
	fastjar findutils flex gawk gcc gettext git intltool \
	libusb libxslt make ncurses openssl patch perl-extutils-makemaker \
	pkgconf python3 rsync sharutils time unzip util-linux wget zlib \
	quilt curl vim openssh \
	&& paccache -rfk0

# Setup user
RUN groupadd $UNAME -g $GID \
	&& useradd -m -u $UID -g $GID -s /bin/bash $UNAME
	
USER $UNAME
WORKDIR /opt
VOLUME ["/opt/"]

ENTRYPOINT /bin/bash

CMD ["true"]