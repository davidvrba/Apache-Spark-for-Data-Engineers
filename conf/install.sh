#!/bin/bash
apt-get  update
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala

wget /home/student https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
tar xvf spark-2.4.4-bin-hadoop2.7.tgz

cp /home/student/Apache-Spark-for-Data-Engineers/conf/hive-site.xml /home/student/spark-2.4.4-bin-hadoop2.7/conf/

echo 'export SPARK_HOME=/home/student/spark-2.4.4-bin-hadoop2.7' >> ~/.bashrc

SPARK_HOME=/home/student/spark-2.4.4-bin-hadoop2.7

wget -P /home/student/spark-2.4.4-bin-hadoop2.7/jars https://jdbc.postgresql.org/download/postgresql-9.4.1212.jar

apt --assume-yes install postgresql postgresql-contrib
sudo -u postgres bash -c "psql -c \"CREATE DATABASE metastore; \""
sudo -u postgres bash -c "psql -c \"CREATE USER hiveuser with encrypted password 'hiveuser'; \""
sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES on database metastore to hiveuser; \""

sudo -u postgres bash -c "psql -c \"ALTER USER postgres PASSWORD 'postgres'; \" "

source ~/.bashrc

wget /home/student http://apache.miloslavbrada.cz/zeppelin/zeppelin-0.8.2/zeppelin-0.8.2-bin-all.tgz
tar xvf zeppelin-0.8.2-bin-all.tgz

cp /home/student/zeppelin-0.8.2-bin-all/conf/zeppelin-env.sh.template /home/student/zeppelin-0.8.2-bin-all/conf/zeppelin-env.sh

echo 'export ZEPPELIN_NOTEBOOK_DIR=/home/student/Apache-Spark-for-Data-Engineers/scala' >> /home/student/zeppelin-0.8.2-bin-all/conf/zeppelin-env.sh

echo 'export SPARK_HOME=/home/student/spark-2.4.4-bin-hadoop2.7' >> /home/student/zeppelin-0.8.2-bin-all/conf/zeppelin-env.sh

sudo chmod -R o+rw zeppelin-0.8.2-bin-all

cd /home/student/zeppelin-0.8.2-bin-all
./bin/zeppelin-daemon.sh start
