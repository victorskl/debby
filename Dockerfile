FROM debian:stretch

# Set the timezone - Debian/Ubuntu
ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
 && echo $TZ > /etc/timezone \
 && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    apt-transport-https ca-certificates software-properties-common curl git vim zsh \
    && rm -rf /var/lib/apt/lists/*

RUN cd /root && git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
    && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
    && chsh -s /usr/bin/zsh

