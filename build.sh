#!/bin/bash

# 配置在build.yml下面进行修改
if [[ -z $version ]]
then
    version=2.11.2
fi

echo version: $version

git clone --branch v${version} https://github.com/goharbor/harbor.git

cd harbor


sed -i "s#VERSIONTAG=dev#VERSIONTAG=${version}#g" ./Makefile 
sed -i "s#BASEIMAGETAG=dev#BASEIMAGETAG=${version}#g" ./Makefile 
sed -i "s#PULL_BASE_FROM_DOCKERHUB=true#PULL_BASE_FROM_DOCKERHUB=false#g" ./Makefile 
sed -i "s#BUILDBIN=false#BUILDBIN=true#g" ./Makefile 
sed -i 's#--no-cache##g' make/photon/Makefile 
sed -i 's#GOARCH=amd64#GOARCH=arm64#g' make/photon/exporter/Dockerfile 
#sed -i '9aENV GOPROXY="https://goproxy.io"' make/photon/exporter/Dockerfile 
#sed -i '2aENV GOPROXY="https://goproxy.io"' make/photon/registry/Dockerfile.binary 
#sed -i '2aENV GOPROXY="https://goproxy.io"' tools/swagger/Dockerfile 

sed -i 's#swagger_linux_amd64#swagger_linux_arm64#g' tools/swagger/Dockerfile

compare_versions() {
    IFS='.' read -r -a version1 <<< "$1"
    IFS='.' read -r -a version2 <<< "$2"

    for i in "${!version1[@]}"; do
        if (( ${version1[i]} < ${version2[i]} )); then
            echo "1" # 表示version1早于version2
            return 1
        elif (( ${version1[i]} > ${version2[i]} )); then
            echo "0" # 表示version1晚于version2
            return 0
        fi
    done

    # 如果循环结束还没有返回，说明两个版本号相等
    echo "0"
}
# 
if compare_versions 2.12.0  $version
then
    # 2.12.2版本之前需要替换
    echo 替换
    sed -i 's#SPECTRAL_VERSION=v6.1.0#SPECTRAL_VERSION=v6.11.0#g' ./Makefile
    sed -i 's#SPECTRAL_VERSION/spectral-linux#SPECTRAL_VERSION/spectral-linux-arm64#g' ./tools/spectral/Dockerfile
fi

echo "ignore-warnings ARM64-COW-BUG" >> ./make/photon/redis/redis.conf

cat > make/photon/redis/Dockerfile << EOF
FROM redis
VOLUME /var/lib/redis
WORKDIR /var/lib/redis
COPY ./make/photon/redis/docker-healthcheck /usr/bin/
COPY ./make/photon/redis/redis.conf /etc/redis.conf
RUN chmod +x /usr/bin/docker-healthcheck \\
    && chown redis:redis /usr/bin/docker-healthcheck \\
    && chown redis:redis /etc/redis.conf

HEALTHCHECK CMD ["docker-healthcheck"]
USER redis
CMD ["redis-server", "/etc/redis.conf"]
EOF


make package_offline

ls
