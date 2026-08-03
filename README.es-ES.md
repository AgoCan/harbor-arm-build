

# harbor-arm-build

> Si encontraste este repositorio, úsalo para ti mismo y no lo promociones públicamente.

> Si quieres ayudarme, puedes darle una estrella a [golang脚手架](https://github.com/go-cheetah/cheetah). No es necesario darle estrella a este repositorio.

> También puedes darle una estrella a [轻量级利用docker部署的运维平台](https://github.com/go-squirrel/squirrel-dev), este repositorio aún está en desarrollo, plataforma de operaciones.

> **Dado que no tengo un servidor ARM, si encuentras algún problema, puedes abrir un issue**

## Obtención de Harbor ARM

|Versión|¿Se puede extraer?|Dirección de imagen Harbor|Dirección de imagen Aliyun (Guangzhou)|
|---|---|---|---|
|2.9.0|Sí|hank997/harbor-arm:2.9.0|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.9.0|
|2.10.3|Sí|hank997/harbor-arm:2.10.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.10.3|
|2.11.2|Sí|hank997/harbor-arm:2.11.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.11.2|
|2.12.2|Sí|hank997/harbor-arm:2.12.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.2|
|2.12.3|Sí|hank997/harbor-arm:2.12.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.3|
|2.12.4|Sí|hank997/harbor-arm:2.12.4|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.4|
|2.12.3|Sí|hank997/harbor-arm:2.12.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.12.3|
|2.13.1|Sí|hank997/harbor-arm:2.13.1|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.13.1|
|2.13.2|Sí|hank997/harbor-arm:2.13.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.13.2|
|2.13.5|Sí|hank997/harbor-arm:2.13.5|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.13.5|
|2.14.0|Sí|hank997/harbor-arm:2.14.0|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.14.0|
|2.14.1|Sí|hank997/harbor-arm:2.14.1|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.14.1|
|2.14.2|Sí|hank997/harbor-arm:2.14.2|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.14.2|
|2.14.3|Sí|hank997/harbor-arm:2.14.3|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.14.3|
|2.15.0|Sí|hank997/harbor-arm:2.15.0|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.15.0|
|2.15.1|Sí|hank997/harbor-arm:2.15.1|crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.15.1|

> La extracción desde el repositorio de Tencent Hong Kong falló, por supuesto también puedes intentar por tu cuenta hkccr.ccs.tencentyun.com/hank997/harbor-arm:${}

- Dirección de acceso a Harbor: https://hub.docker.com/r/hank997/harbor-arm/tags

- Método de extracción y uso

    ```bash
    docker run -it --rm -v $PWD:/pack crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.15.0 mv harbor-offline-installer-2.15.0.tgz /pack
    ```

## Información adicional

### Problema con la versión de nginx

Puedes modificar el contenido a continuación y simplemente usar la imagen oficial
- https://github.com/goharbor/harbor/blob/main/make/photon/nginx/Dockerfile

## Ejecución local

```
version=2.15.1 bash build.sh
docker build --build-arg version=2.15.1 -t crpi-p2k20xc75i1dtww9.cn-guangzhou.personal.cr.aliyuncs.com/hank997/harbor:2.15.1 .
```
