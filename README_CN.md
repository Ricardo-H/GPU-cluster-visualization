<a hreaf="README.md"><button align="right">英语</button></a><a hreaf="README_CN.md"><button align="right">中文</button></a><a hreaf="README_JP.md"><button align="right">日文</button></a>

# GPU集群可视化



## 项目背景

时间: 2023年春季学期

地址: 日本立命馆大学 - 情报理工学院 - 视觉处理实验室(VIP)

成员:  Youling Huang , Yinan Yang

## 项目简介

实验室有30个不同型号的GPU,便于实时监控各个GPU的运行情况,我们决定开发这个GPU集群可视化项目,保护贵重实验设备

##### 组成部分

1. 采集单个GPU信息 - node_exporter
2. 整合GPU集群信息,搭建数据库 - prometheus
3. 可视化数据 - grafana

4. 监控报警 - grafana
