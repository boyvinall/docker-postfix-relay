.PHONY: all docker-image clean
all: docker-image

docker-image: dumb-init
	docker build -t boyvinall/mailrelay .

dumb-init:
	wget -Odumb-init https://github.com/boyvinall/dumb-init/releases/download/latest/dumb-init
	# wget -Odumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64

clean:
	-docker image rm -f boyvinall/mailrelay
	rm -f dumb-init