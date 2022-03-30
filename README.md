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

## 参考のリンク

- [MySQL、localhostだとポート指定オプション効かないってマジですか。。](https://su-kun1899.hatenablog.com/entry/2016/10/27/005410)
- [mariadb公式Dockerイメージ](https://github.com/MariaDB/mariadb-docker )
