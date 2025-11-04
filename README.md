# Description
这是一个自动编译的仓库，使用[alice.ws](https://alice.ws)免费提供给developer的实例evo作为github runner运行你的编译命令

# features
- 支持一键注册runner
# Usage
1. 把yml复制到对应仓库的.github/workflows 文件夹下
2. 在你的要编译的仓库中添加secret和变量
3. 修改对应workflow的run-on为self-hosted

| secret名称          | 作用                                          | 是否必须 |
|-------------------|---------------------------------------------|------|
| API_TOKEN         | alice evo的token,格式为 `client_id:client_secret` | 是    |
| SSH_PRIVATE_KEY_ID | ssh私钥id,在alice面板创建                          | 是    |
| SSH_PRIVATE_KEY   | ssh私钥内容                                     | 是    |
| GH_TOKEN         | github的token,用于创建runner和上传编译产物              | 是    |

| 变量名称       | 作用                        | 是否必须 |
|------------|---------------------------|------|
| WORKFLOW   | 如 build.yml               | 是    |
| PRODUCT_ID | 实例类型，如2c4g, 范围为38-41，默认38 | 否    |