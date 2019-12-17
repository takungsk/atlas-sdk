FROM maven:3.6.3-jdk-8 AS build-env

RUN mkdir /work
WORKDIR /work
RUN wget https://marketplace.atlassian.com/download/plugins/atlassian-plugin-sdk-tgz -O atlassian-plugin-sdk-8.0.16.tar.gz \
  && mkdir -p /work/opt \
  && tar -xvzf atlassian-plugin-sdk-8.0.16.tar.gz -C /work/opt \
  && mv /work/opt/atlassian-plugin-sdk-8.0.16 /work/opt/atlassian-plugin-sdk

FROM maven:3.6.3-jdk-8
COPY --from=build-env /work/opt /opt
ENV PATH /opt/atlassian-plugin-sdk/bin:$PATH
