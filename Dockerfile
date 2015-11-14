FROM colstrom/alpine:main

RUN apk-install ruby \
  && echo "gem: --no-ri --no-rdoc" | tee /etc/gemrc

