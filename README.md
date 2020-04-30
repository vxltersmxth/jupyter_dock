# jupyter_dock
Build and run jupyter in docker for data science and pytorch for deep learning


To build image use
 ```
  chmod +x docker_build.sh
  ./docker_build.sh
 ```
 In jupyter_dock_start.sh change
 DATA_PATH=path/to/your/host/work/dir
 HOST_PORT=your_port
 
 To run container use
 ```
  chmod +x jupyter_dock_start.sh
  ./jupyter_dock_start.sh
 ```
