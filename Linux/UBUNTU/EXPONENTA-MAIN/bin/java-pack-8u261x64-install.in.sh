mv ./jdk-8u261-linux-x64.tar.gz /opt
cd /opt
tar -xzvf /opt/jdk-8u261-linux-x64.tar.gz
cd /opt/jdk1.8.0_261

update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_261/bin/java 1
update-alternatives --install /usr/bin/javaws javaws /opt/jdk1.8.0_261/bin/javaws 1
update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_261/bin/javac 1
update-alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_261/bin/jar 1
# update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so mozilla-javaplugin.so /opt/jdk1.8.0_261/jre/lib/amd64/libnpjp2.so 1
update-alternatives --set java /opt/jdk1.8.0_261/bin/java
update-alternatives --set javaws /opt/jdk1.8.0_261/bin/javaws
update-alternatives --set javac /opt/jdk1.8.0_261/bin/javac
update-alternatives --set jar /opt/jdk1.8.0_261/bin/jar
# update-alternatives --set mozilla-javaplugin.so /opt/jdk1.8.0_261/jre/lib/amd64/libnpjp2.so