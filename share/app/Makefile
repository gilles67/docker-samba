all:
	apt-get update -y
	apt-get upgrade -y
	apt-get install -y --no-install-recommends samba iproute2 samba-vfs-modules
	apt-get -y autoremove
	apt-get clean
	chmod a+x /app/samba-run
	mkdir -p /app/samba
	sed -i 's/^UID_MIN[[:space:]]*1000$$/UID_MIN\t\t\t10000/g' /etc/login.defs
	sed -i 's/^GID_MIN[[:space:]]*1000$$/GID_MIN\t\t\t10000/g' /etc/login.defs
	cat /etc/login.defs | grep UID
	cat /etc/login.defs | grep GID
	groupadd share
