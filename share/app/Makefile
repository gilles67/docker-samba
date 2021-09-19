all: 
	apt-get update -y
	apt-get upgrade -y
	apt-get install -y --no-install-recommends samba iproute2
	apt-get -y autoremove 
	apt-get clean
	chmod a+x /app/samba-run
	mkdir -p /app/samba

