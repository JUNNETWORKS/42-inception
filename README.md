# 42-inception

Inception is one of the projects in 42 cursus.

## メモ

nginx のDockerコンテナ色々試してるなう

```bash
docker image build -t=nginx_test srcs/requirements/nginx && docker container run --rm -it -p 8080:80 -p 443:443 nginx_test bash ; docker image rm nginx_test
```
