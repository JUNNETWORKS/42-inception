# 42-inception

Inception is one of the projects in 42 cursus.

## メモ

wordpress コンテナの中からmariadbにつなぐ
`mysql --host=$WP_DB_HOST --user=$WP_DB_USER --password=$WP_DB_PASSWORD $WP_DB_NAME`

### Run docker command as non-root user

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
# after relogin, user can run docker coomand
```

### Upgrade Docker

```bash
# Remove old versions
sudo apt-get remove docker docker-engine docker.io containerd runc
# Install new versions
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
```

### Upgrade docker-compose

.env ファイルを自動的に読み込む仕様は docker-compose 1.28 以降の仕様なので、それよりも古い場合は docker-compose のバージョンを更新する必要がある。

```bash
# Remove old version
sudo apt-get remove -y docker-compose
# Install new one
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

Show all users `SELECT User, Host, Password FROM mysql.user;`

Remove volume directories `sudo rm -rf /home/jtanaka`

login url: https://jtanaka.42.fr/wp-login.php

## 参考のリンク

- [MySQL、localhostだとポート指定オプション効かないってマジですか。。](https://su-kun1899.hatenablog.com/entry/2016/10/27/005410)
- [mariadb公式Dockerイメージ](https://github.com/MariaDB/mariadb-docker )
