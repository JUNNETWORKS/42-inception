INTRA_ID = jtanaka
VOLUME_DIR = /home/${INTRA_ID}/data
VOLUME_WP_DIR = ${VOLUME_DIR}/wordpress
VOLUME_DB_DIR = ${VOLUME_DIR}/mariadb

.PHONY: all
all: setup_volume_dir setup_domain
	docker-compose -f srcs/docker-compose.yml up &

.PHONY: clean
clean:
	docker-compose -f srcs/docker-compose.yml down

.PHONY: fclean
fclean: clean

.PHONY: re
re: fclean all

.PHONY: setup_volume_dir
setup_volume_dir:
	@if [ ! -d ${VOLUME_WP_DIR} ] ; then \
		sudo mkdir -p ${VOLUME_WP_DIR}; \
	fi
	@if [ ! -d ${VOLUME_DB_DIR} ] ; then \
		sudo mkdir -p ${VOLUME_DB_DIR}; \
	fi

.PHONY: setup_domain
setup_domain:
	@if ! grep -q -E '^127\.0\.0\.1\s+jtanaka.42.fr' /etc/hosts ; then \
		echo "Add 127.0.0.1 to jtanaka.42.fr in /etc/hosts!"; \
		sudo sh -c 'echo "127.0.0.1\tjtanaka.42.fr" >> /etc/hosts'; \
	fi
