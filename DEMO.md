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
6. **配置数据源和创建仪表板**: 登录后，配置数据源，然后创建仪表板以可视化您的数据。默认情况下，Grafana 没有连接到数据源，因此您需要配置数据源（如 Prometheus、InfluxDB 等）以显示数据。
7. **自定义 Grafana 容器**: 如果您需要对 Grafana 容器进行更多的自定义配置，您可以通过挂载配置文件或使用环境变量来进行设置。请查阅 Grafana 官方文档以获取更多详细信息：[Grafana Docker 配置](https://grafana.com/docs/grafana/latest/installation/docker/#configure-environment-variables)
8. **停止和删除容器**: 当您不再需要运行的 Grafana 容器时，可以使用以下命令停止和删除容器：

   ```bash
   docker stop grafana
   docker rm grafana
   ```

这些步骤应该让您能够在 Docker 中创建并运行一个简单的 Grafana 容器，以便开始使用 Grafana 可视化和监控您的数据。根据需要，您可以进一步自定义 Grafana 容器的配置。
