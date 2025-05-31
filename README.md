# Description
这是一个自动编译的仓库，使用[alice.ws](https://alice.ws)免费提供给developer的实例evo作为github runner运行你的编译命令

# features
- 支持一键注册runner
- 支持自定义命令一键运行编译
# Usage
1. Fork此仓库
2. 在你的仓库中添加secret和变量
3. 手动运行action workflow即可

| secret名称          | 作用                      | 是否必须         |
|-------------------|-------------------------|--------------|
| BUILD_COMMAND     | 编译命令，请将编译输出放入_output文件夹 | 是            |
| API_TOKEN         | alice evo的token         | 是            |
| SSH_PRIVATE_KEY_ID | ssh私钥id,在alice面板创建      | 是            |
| SSH_PRIVATE_KEY   | ssh私钥内容                 | 是            |
| GH_TOKEN         | github的token,用于创建issue和上传编译产物 | 若使用runner则需要 |

| 变量名称     | 作用                                                        | 是否必须 |
|----------|-----------------------------------------------------------|------|
| REPO     | 目标仓库，如 twoonefour/alist                                   | 是    |
| 分支       | 目标分支                                                      | 否    |
| WORKFLOW | 如 build.yml ，若指定WORKFLOW且目标仓库build.yml中有ON_DISPATCH，则自动执行 | 否    |