FROM birdy/sdkman:latest

RUN apt-get update -y && apt-get install build-essential zlib1g-dev libc-dev -y
RUN sdk install java $(cat GRAALVM_VERSION) && sdk use java $(cat GRAALVM_VERSION)

ENTRYPOINT ["/bin/bash","--login", "-c"]
