FROM darkart/jdk8
ADD wls12130/ /opt/wls12130/
ENV MW_HOME=/opt/wls12130 CONFIG_JVM_ARGS=-Djava.security.egd=file:///dev/urandom JAVA_OPTIONS=-Djava.security.egd=file:///dev/urandom
RUN $MW_HOME/wlserver/common/bin/unpack.sh -template=$MW_HOME/wlserver/common/templates/wls/wls.jar -domain=/domains/mydomain -user_name=weblogic -password=weblogic
CMD /domains/mydomain/startWebLogic.sh
