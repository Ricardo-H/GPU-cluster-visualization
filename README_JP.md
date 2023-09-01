[English](https://github.com/Ricardo-H/GPU-cluster-visualization) |
[Chinese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_CN.md) |
[Jpanese](https://github.com/Ricardo-H/GPU-cluster-visualization/blob/main/README_JP.md)

# GPU集群可视化



## プロジェクト概要

时间： 2023年春の学期

地点： 日本立命馆大学 - 情报理工学院 - 视觉処理实验室(VIP)

成员： Youling Huang， Yinan Yang

## プロジェクト说明

实验室には、30种类のGPUがあり、即时的に各GPUの动作を监视することができます。我们はこれらの可视化プログラムを开発し、贵重なデバイスを保护するためにいます。

##### 构成部品

1. 单个GPU情报の収集 - node_exporter
2. GPU集群情报の整合とデータベースの设定 - prometheus
3. 可视化データ - grafana
4. 监诊报警 - grafana
