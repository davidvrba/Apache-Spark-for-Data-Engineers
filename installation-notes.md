# Installation notes:

## On fresh Ubuntu 22.04 installation:
* There is an installation script that you can use for Python installation as follows (look inside conf/python_installation.sh to see what is being installed):
```
sudo apt-get install git
git clone https://github.com/davidvrba/Apache-Spark-for-Data-Engineers.git
chmod +x /home/ubuntu/Apache-Spark-for-Data-Engineers/conf/python_installation.sh
sudo /home/ubuntu/Apache-Spark-for-Data-Engineers/conf/python_installation.sh ubuntu
```
* Note: It assumes that your home folder is /home/ubuntu. If it is not, you need to change the commands accordingly.
