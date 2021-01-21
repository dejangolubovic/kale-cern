#!/bin/bash

#echo '. /start_jupyter.sh &'
#. /start_jupyter.sh &
#echo 'sleep'
#sleep 1m
#python3 /init_namespace.py

echo 'Starting Jupyter'
jupyter lab --notebook-dir=/home/jovyan --ip=0.0.0.0 --no-browser --allow-root --port=8888 --LabApp.token='' --LabApp.password='' --LabApp.allow_origin='*' --LabApp.base_url=${NB_PREFIX} &
jupyter_pid=$!
echo 'Sleeping 1m'
sleep 1m
echo 'Init namespace'
python3 /init_namespace.py
echo 'Waiting'
wait $jupyter_pid