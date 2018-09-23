FROM birdy/sdkman:latest

RUN apt-get update -y && apt-get install build-essential zlib1g-dev libc-dev -y
RUN sdk install java 1.0.0-rc6-graal && sdk use java 1.0.0-rc6-graal 

ENTRYPOINT ["/bin/bash","--login", "-c"]
