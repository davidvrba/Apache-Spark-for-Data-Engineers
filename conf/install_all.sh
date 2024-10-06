#!/bin/bash

chmod +x /home/ubuntu/Apache-Spark-for-Data-Engineers/conf/python_installation.sh
chmod +x /home/ubuntu/Apache-Spark-for-Data-Engineers/conf/export_variables.sh

sudo /home/ubuntu/Apache-Spark-for-Data-Engineers/conf/python_installation.sh ubuntu
/home/ubuntu/Apache-Spark-for-Data-Engineers/conf/export_variables.sh
source ~/.bashrc
/home/ubuntu/Apache-Spark-for-Data-Engineers/conf/setup_hive_metastore.sh
