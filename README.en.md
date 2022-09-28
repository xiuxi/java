root@santaclara-ca-datacenter:~# cd /
root@santaclara-ca-datacenter:/# git clone git@github.com:xiuxi/java.git


vim /root/.bashrc

shift+g
o

CLASSPATH=.:/java/target/classes:/java/dependency/*:$CLASSPATH
export CLASSPATH
PATH=.:/java/bat:$PATH
export PATH

