.PHONY: all
all:
	docker-compose -f srcs/docker-compose.yml up &

.PHONY: clean
clean:
	docker-compose -f srcs/docker-compose.yml down

.PHONY: fclean
fclean: clean

.PHONY: re
re: fclean all
