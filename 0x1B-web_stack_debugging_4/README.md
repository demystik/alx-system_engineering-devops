# Web stack debugging #4

s marked the fifth installment within a sequence of web stack debugging endeavors. In these assignments, I was presented with dysfunctional or erroneous web stacks confined within isolated containers. My responsibility encompassed rectifying these web stacks to restore their operational state. For each undertaking, I authored a script that automated the essential commands required for troubleshooting and resolution.


## Tasks :page_with_curl:

* **0. Sky is the limit, let's bring that limit higher**
  * [0-the_sky_is_the_limit_not.pp](./0-the_sky_is_the_limit_not.pp): Puppet manifest
  that increases the amount of traffic an Apache web server can effectively handle.

* **1. User limit**
  * [1-user_limit.pp](./1-user_limit.pp): Puppet manifest that changes the operating system
  configuration so that it is possible to login with the user `holberton` and open a file
  without error.
