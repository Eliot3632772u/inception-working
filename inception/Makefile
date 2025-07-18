all:
	mkdir -p /home/irabhi/data/mariadb /home/irabhi/data/portainer /home/irabhi/data/wordpress && cd srcs && docker compose up --build

fclean:
	cd srcs && \
	docker compose down --volumes --remove-orphans && \
	docker image rm -f `docker image ls -q` && \
	rm -rf /home/irabhi/data
 