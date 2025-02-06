# ROS Depth Camera Tutorial (rospy)
Author: [Huanyu Li](https://github.com/HuanyuL), ChatGPT

This repository provides a tutorial on using a **depth camera** with **ROSpy** in **ROS Noetic**. It covers setting up a ROS package, publishing depth images, creating custom messages and services, and processing depth data.


## Repository Structure

```
camera_tutorial/
│── src/
│   │
│── msg/
│   ├── MyMsg.msg           # Custom message definition
│── srv/
│   ├── Mysrv.srv         # Custom service definition
│── launch/
│   ├── k4a.launch      # Launch file for nodes
│── CMakeLists.txt
│── package.xml
│── README.md

```

---

## Installation & Setup

### Before build the docker
add this into your `bashrc`
```
if [ -f "/dev_ws/setup.bash" ]; then
    source /dev_ws/setup.bash
fi
```

### How to build the container
To build the image.
```
.docker/build_image.sh
```
To run the image.
```
.docker/run_user.sh
```
You may need to change the owner of the dev_ws, copy the line showing on the terminal.
```
sudo chown -R [YOUR USER NAME] /dev_ws
```
Start a terminal
```
terminator
```

## Running the Nodes

### **Camera Driver**
```bash
roslaunch azure_kinect_ros_driver driver.launch 

```

### **RQT**
```bash
rqt
```

### **rviz**
```bash
rviz
```

---

## Custom Message & Service

### **Custom Message (`MyMsg`)**
```plaintext
Header header
sensor_msgs/Image depth_image
float32 min_range
float32 max_range
```

### **Custom Service (`MySrv`)**
```plaintext
sensor_msgs/Image depth_image  # Request
---
float32 average_depth          # Response
```

---

## License
This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.
