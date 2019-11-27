#!/bin/bash
apt-get  update
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala
sudo apt install maven

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

cd ..
cd tests

git clone https://github.com/apache/zeppelin.git

cd zeppelin
mvn clean package -DskipTests

./bin/zeppelin-daemon.sh start
