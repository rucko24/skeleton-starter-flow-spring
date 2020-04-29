FROM gitpod/workspace-full

WORKDIR /home/gitpod
RUN wget https://github.com/TravaOpenJDK/trava-jdk-11-dcevm/releases/download/dcevm-11.0.6%2B1/java11-openjdk-dcevm-linux.tar.gz && mv java11-openjdk-dcevm-linux.tar.gz  trava.tgz
RUN ls -l trava.tgz
RUN mkdir ~/.trava && tar zxvf trava.tgz --strip-components=1 -C ~/.trava
ENV JAVA_HOME ~/.trava
