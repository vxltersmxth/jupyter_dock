DATA_PATH=/media/andrey/slow/
HOST_PORT=8890

docker run -it --init --ipc=host --volume="$DATA_PATH:/drive/" -p $HOST_PORT:8888 -e NVIDIA_VISIBLE_DEVICES=all anaconda_dock jupyter notebook /drive/ --ip 0.0.0.0 --port 8888 --no-browser --allow-root
