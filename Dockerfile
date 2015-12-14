FROM colstrom/alpine

RUN apk-install ruby \
  && echo "gem: --no-ri --no-rdoc" | tee /etc/gemrc \
  && gem install bundler

ENTRYPOINT ["ruby"]
