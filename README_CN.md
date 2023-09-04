[English](https://github.com/Ricardo-H/GPU-cluster-visualization) |
[Chinese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_CN.md) |
[Jpanese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_JP.md)

# GPU集群可视化

## 项目概述

这个项目旨在实时可视化监控实验室中的GPU集群，以确保贵重实验设备的稳定运行和性能监控。

## 项目状态

目前，项目已经完成第一个可用版本，我们正在积极开发新功能和改进现有功能。

## 项目背景

时间: 2023年春季学期

地址: 日本立命馆大学 - 情报理工学院 - 视觉处理实验室(VIP)  

本项目是为了满足VIP实验室的需求，该实验室拥有30个不同型号的GPU，需要实时监控它们的性能和运行情况，以确保实验设备的有效利用和保护。

### 成员:  
- Yinan Yang: 负责GPU数据采集和整合。
- Youling Huang: 负责数据可视化和监控报警。


## 项目组成部分

1. **采集单个GPU信息**  
           使用nvidia-smi(.exe) docker binary实现，用于收集单个GPU的性能和状态信息。
3. **整合GPU集群信息，搭建数据库**  
         使用Prometheus建立数据库，整合和存储GPU集群数据。
5. **可视化数据**  
         使用Grafana创建仪表盘，以便用户能够可视化GPU集群的性能和状态。
7. **监控报警**  
         使用Grafana设置监控报警，以及实时通知用户任何异常情况。

