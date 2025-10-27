# harbor-arm-build

> harbor arm 获取

|版本|是否拉取|harbor镜像地址|阿里镜像地址(广州)|
|---|---|---|---|
|2.9.0|是|hank997/harbor-arm:2.9.0|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.9.0|
|2.10.3|是|hank997/harbor-arm:2.10.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.10.3|
|2.11.2|是|hank997/harbor-arm:2.11.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.11.2|
|2.12.2|是|hank997/harbor-arm:2.12.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.2|
|2.12.3|是|hank997/harbor-arm:2.12.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.3|
|2.12.4|是|hank997/harbor-arm:2.12.4|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.4|
|2.12.3|是|hank997/harbor-arm:2.12.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.3|
|2.13.1|是|hank997/harbor-arm:2.13.1|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.13.1|
|2.13.2|是|hank997/harbor-arm:2.13.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.13.2|
|2.14.0|是|hank997/harbor-arm:2.14.0|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.14.0|

> 腾讯香港仓库拉取失败，当然也可以自行尝试 hkccr.ccs.tencentyun.com/hank997/harbor-arm:${}

- harbor访问地址： https://hub.docker.com/r/hank997/harbor-arm/tags

- 获取使用方式

    ```bash
    docker run -it --rm -v $PWD:/pack crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor-arm:2.11.2 mv harbor-offline-installer-2.12.2.tgz /pack
    ```
