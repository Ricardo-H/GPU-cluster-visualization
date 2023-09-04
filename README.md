[English](https://github.com/Ricardo-H/GPU-cluster-visualization) |
[Chinese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_CN.md) |
[Japanese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_JP.md)

# GPU Cluster Visualization

## Project Overview

This project aims to provide real-time visualization and monitoring of the GPU cluster in the laboratory, ensuring the stable operation and performance monitoring of valuable experimental equipment.

## Project Status

Currently, the project has completed its first usable version, and we are actively developing new features and improving existing ones.

## Project Background

Time: Spring Semester 2023

Location: College of Information Science and Engineering, Ritsumeikan University - Visual Information Processing Laboratory (VIP)

This project was developed to meet the needs of the VIP laboratory, which possesses 30 different models of GPUs and requires real-time monitoring of their performance and operational status to ensure the efficient utilization and protection of experimental equipment.

### Topology:
<img src="IMG/Topology.png"  style="zoom: 60%;" />
The research lab is equipped with multiple campus network exits, where each exit connects through static address dialing based on the routers.


### Members:
- Yinan Yang: Responsible for GPU data collection and integration.
- Youling Huang: Responsible for data visualization and monitoring alerts.

## Project Components

1. **Individual GPU Information Collection**
   Implemented using nvidia-smi(.exe) binary to collect performance and status information for individual GPUs.

2. **Integration of GPU Cluster Information and Database Setup**
   Utilizing Prometheus to establish a database for integrating and storing data from the GPU cluster.

3. **Data Visualization**
   Creating dashboards using Grafana to allow users to visualize the performance and status of the GPU cluster.

4. **Monitoring and Alerts**
   Setting up monitoring alerts using Grafana to notify users in real-time of any anomalies.



## 1. GPU Server Information Collect
