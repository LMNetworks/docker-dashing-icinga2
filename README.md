# Introduction

The Icinga 2 dashboard is built on top of Dashing and uses the Icinga 2 API to visualize what's going on with your monitoring. It combines several popular widgets and provides development instructions for your own implementation. The dashboard also allows to embed the Icinga Web 2 host and service problem lists as Iframe.

## How to use this image

`$ docker run --name dashing-icinga2 -d lmnetworks/dashing-icinga2`

The following environment variables are also honored for configuring your dashing-icinga2 instance:

* `-e ICINGA2_HOSTNAME=...` (default: `localhost`)
* `-e ICINGA2_PORT=...` (default: `5665`)
* `-e ICINGA2_USERNAME=...` (default: `dashing`)
* `-e ICINGA2_PASSWORD=...` (default: `dashingpassword`)
* `-e ICINGAWEB2_URL=...` (default: `http://localhost/icingaweb2`)

If you'd like to be able to access the instance from the host without the container's IP, standard port mappings can be used:

`$ docker run --name dashing-icinga2 -p 80:3030 -d lmnetworks/dashing-icinga2`

A complete example:

`docker run -ti --rm  -p 80:3030 -e ICINGA2_HOSTNAME=192.168.1.2 -e ICINGA2_USERNAME=dashing -e ICINGA2_PASSWORD=ohh0ooB2Su5hiwoh icinga2-dashing`
