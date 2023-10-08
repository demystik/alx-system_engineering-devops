Postmortem report

The outage started on sunday 03:46am WAT and ended on sunday 7:15am WAT.


Server failure to listen on port 80 which is the default port. Many end users were not able to acess our website within this hour because of server failure. 99% of our users were not able to acess our website during this hour of outage.


The site-enabled/default file was misconfigured and so, it wasn't allowing the nginx server to listen on port 80.

The issue was detected by 03:55am WAT on Sunday
The issue was detected through a call from monitoring tool (pagerduty).
After series of trials to resolve the issue, the issue was later resolved with sites-enabled/default file been remove and site-available/default file was linked to it.
listening port was checked several time and port portion of site-available/default file was reconfigured several times.
The incident was escalate to dev Thaoban
Dev Thaoban reconfigure nginx/site-available/default file.

The server was running nginx web server program to serve clients and it was functionally configured, up and running 24/7 to meet with users demand.
etc/nginx/site-available and etc/nginx/site-enabled default files were well configured and linked to eachother with ln symbolink. The server was still running but could not respond to users because it was not listening on port 80 but port 8000. site-enabled/default file was misconfigured and thereby caused the issue.


The webser should only be accessed by sysadmin personel and not a mere programmmer with low/no knowledge about server system.

completely check the two default files and re-link them.
