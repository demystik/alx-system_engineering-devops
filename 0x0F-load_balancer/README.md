# LOAD_BALANCER readme

### resources
https://www.haproxy.com/documentation/haproxy-configuration-tutorials/core-concepts/acls/
https://repost.aws/knowledge-center/linux-static-hostname
https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts
https://www.techopedia.com/definition/27178/http-header###
https://www.thegeekstuff.com/2016/01/load-balancer-intro


# Load balancer

In this project, I continued to build up the configuration of the web server
issued in project 0x0B. I was issued two additional servers, one to replicate
the Nginx configuration of my original server, and another to set up an HAproxy
load balancer on to manage both web servers.

## Tasks :page_with_curl:

* **0. Double the number of webservers**
  * [0-custom_http_response_header](./0-custom_http_response-header): Bash
  script that installs and configures Nginx on a server with a custom HTTP
  response header.
    * The name of the HTTP header is `X-Served-By`.
    * The value of the HTTP header is the hostname of the server.

* **1. Install your load balancer**
  * [1-install_load_balancer](./1-install_load_balancer): Bash script that
  installs and configures HAproxy version 1.5 on a server.
    * Enables management via the init script.
    * Requests are distributed using a round-robin algorithm.
