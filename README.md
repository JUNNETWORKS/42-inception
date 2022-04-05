# 42-inception

Inception is one of the projects in 42 cursus.

## メモ

wordpress コンテナの中からmariadbにつなぐ
`mysql --host=$WP_DB_HOST --user=$WP_DB_USER --password=$WP_DB_PASSWORD $WP_DB_NAME`

Show all users `SELECT User, Host, Password FROM mysql.user;`

Remove volume directories `sudo rm -rf /home/jtanaka`

login url: https://jtanaka.42.fr/wp-login.php

## 参考のリンク

- [MySQL、localhostだとポート指定オプション効かないってマジですか。。](https://su-kun1899.hatenablog.com/entry/2016/10/27/005410)
- [mariadb公式Dockerイメージ](https://github.com/MariaDB/mariadb-docker )
