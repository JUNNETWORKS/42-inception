# 42-inception

Inception is one of the projects in 42 cursus.

## メモ

nginx のDockerコンテナ色々試してるなう

```bash
docker image build -t=nginx_test srcs/requirements/nginx && docker container run --rm -it -p 8080:80 -p 443:443 nginx_test bash ; docker image rm nginx_test
```

## 参考のリンク

- [MySQL、localhostだとポート指定オプション効かないってマジですか。。](https://su-kun1899.hatenablog.com/entry/2016/10/27/005410)
- [mariadb公式Dockerイメージ](https://github.com/MariaDB/mariadb-docker )