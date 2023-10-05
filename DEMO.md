# 快速上手的例样

#### 需使用到的软件:

+ Docker([https://www.docker.com/](https://www.docker.com/))
+ Promethus(无需下载)
+ Grafana(无需下载)

#### 使用docker创建grafana

1. **安装 Docker**:   [https://www.docker.com/](https://www.docker.com/)
2. **拉取 Grafana 镜像**: 打开终端界面，并运行以下命令来拉取 Grafana 镜像：

   ```bash
   docker pull grafana/grafana
   ```
3. **运行 Grafana 容器**: 使用以下命令来创建和运行 Grafana 容器：

   ```bash
   docker run -d -p 3000:3000 --name grafana grafana/grafana
   ```
   - `-d`: 让容器在后台运行。
   - `-p 3000:3000`: 将容器的端口 3000 映射到主机的端口 3000，这是 Grafana 默认的 Web 界面端口。
   - `--name grafana`: 为容器指定一个名称，这里命名为 "grafana"。
4. **访问 Grafana Web 界面**: 打开 Web 浏览器，并访问 `http://localhost:3000`，这是本地运行 Docker的情况。如果在远程服务器上运行 Docker，则将 localhost 替换为服务器的 IP 地址或域名。
5. **登录 Grafana**: 初始登录用户名和密码为 "admin"。首次登录后，会被要求更改密码。
6. **配置数据源**: 登录后，配置数据源Prometheus.

   + 点击左侧菜单--Connections--Data sources,点击右侧默认的数据源Prometheus
   + 将HTTP里面的Prometheus server URL填入 ~~**对应数据网址**~~
7. **导入仪表板**:
   点击左侧菜单---Dashboards,右侧新建new,选择import.
   之后有以下两个选择(根据需求任选其一)

   + 使用固定模板,输入dashboard ID   **19714**	(缺点是不能自由更改面板)
   + 导入json文件,首先点击下载面板配置文件[Multi_GPU.json](GPU-cluster-visualization\dashboard_for_grafana\Multi_GPU.json),随后导入grafana

   选择步骤6已经配置好的数据源 Prometheus
8. **停止和删除容器**:

   ```bash
   docker stop grafana
   docker rm grafana
   ```
