# Installation notes:

## To run all examples in this repository you will need to have installed:

### For Scala code:
* java
* scala
* Apache Spark
* Apache Zeppelin
* Postgresql

### On fresh Ubuntu 18.04 installation:
* There is an installation script that you can use for Scala installation as follows (look inside conf/install.sh to see what is being installed):
```
sudo apt update
sudo apt-get install git
git clone https://github.com/davidvrba/Apache-Spark-for-Data-Engineers.git
chmod +x /home/student/Apache-Spark-for-Data-Engineers/conf/install.sh
sudo ./Apache-Spark-for-Data-Engineers/conf/install.sh
```
* Note: It assumes that your home folder is /home/student. If it is not, you need to change the script accordingly.
