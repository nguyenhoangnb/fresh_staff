# ROS Talker–Listener Snap

## Giới thiệu

Dự án này minh họa cách **đóng gói và chạy ứng dụng ROS Noetic** dưới dạng một **gói Snap**.  
Gói này bao gồm hai node ROS cơ bản: **talker** và **listener**, được khởi chạy cùng nhau qua `roslaunch`.

Mục tiêu:
- Cài đặt và chạy ROS mà **không cần cài ROS sẵn**.
- Dễ dàng triển khai trên bất kỳ hệ thống Ubuntu hoặc Linux nào hỗ trợ Snap.
- Cập nhật và phân phối nhanh chóng thông qua Snap Store.

---

## Yêu cầu

- Ubuntu 20.04 hoặc mới hơn  
- Đã cài đặt Snapcraft:

```bash
sudo snap install --classic snapcraft
```
## Cấu trúc dự án

```bash
ros_talker_snap/
├── snap/
│   └── snapcraft.yaml
└── README.md
```

## Nội dung file snapcraft.yaml
```yaml
name: ros-talker-listener
version: '0.1'
summary: ROS Talker/Listener Example
description: |
  Ví dụ này khởi chạy hai node ROS — talker và listener — giao tiếp qua topic /chatter.

base: core20
confinement: devmode

parts:
  ros-tutorials:
    plugin: catkin
    source: https://github.com/ros/ros_tutorials.git
    source-branch: noetic-devel
    source-subdir: roscpp_tutorials
    stage-packages:
      - ros-noetic-roslaunch

apps:
  ros-talker-listener:
    command: opt/ros/noetic/bin/roslaunch roscpp_tutorials talker_listener.launch
    extensions: [ros1-noetic]
```
## Cách build gói Snap
```bash
snapcraft --enable-experimental-extensions
```
Quá trình này sẽ:

* Tự động tải ROS và phụ thuộc

* Xây dựng dự án bằng Catkin

* Tạo ra file .snap trong cùng thư mục
Kết quả sau khi build thành công:

```
ros-talker-listener_0.1_amd64.snap
```
## Cách cài đặt và chạy thử
Cài đặt gói vừa build:

```bash
sudo snap install ros-talker-listener_0.1_amd64.snap --devmode
```

Chạy ứng dụng:
```
ros-talker-listener
```

Kết quả mong đợi:
```less
[INFO] hello world 0
[INFO] I heard: [hello world 0]
...
```