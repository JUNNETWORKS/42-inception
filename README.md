# 42-inception

Inception is one of the projects in 42 cursus.

## メモ

nginx のDockerコンテナ色々試してるなう

```bash
docker image build -t=nginx_test srcs/requirements/nginx && docker container run --rm -it -p 8080:80 -p 443:443 nginx_test bash ; docker image rm nginx_test
```

WordPressのインストール画面ではなくすでにブログとして立ち上がっている画面で起動する必要がある。wpcliを使うとできるらしい。

wordpress コンテナの中からmariadbにつなぐ
`mysql --host=$DB_HOST --user=$DB_USER --password=$DB_PASSWORD $DB_NAME`

Show all users `SELECT User, Host, Password FROM mysql.user;`

## 参考のリンク

- [MySQL、localhostだとポート指定オプション効かないってマジですか。。](https://su-kun1899.hatenablog.com/entry/2016/10/27/005410)
- [mariadb公式Dockerイメージ](https://github.com/MariaDB/mariadb-docker )
