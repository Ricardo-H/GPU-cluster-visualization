<a hreaf="README.md"><button align="right">英語</button></a><a hreaf="README_CN.md"><button align="right">中国語</button></a><a hreaf="README_JP.md"><button align="right">日本語</button></a>

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
