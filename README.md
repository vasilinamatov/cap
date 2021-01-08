# cap

Welcome to my home assignment!<br>
CI/CD Pipeline flow created in order to deploy the python web app based flask.

Two Releases with different Versions of the app are available. To switch between the versions change Release between 1 and 2 in file activate_release.yml<br>

Note: By changing the code and running git push in current github the webhook activates the Jenkins CI/CD Pipeline. Jenkins is running ansible code and placing the web app inside the docker and then exposing the port 5000 to the world<br>

Link to Jenkins: http://ec2-18-195-150-173.eu-central-1.compute.amazonaws.com:8080<br>
Link to Web App: http://ec2-18-195-150-173.eu-central-1.compute.amazonaws.com:5000<br>

Monitoring by Grafana:<br>
http://ec2-18-192-65-217.eu-central-1.compute.amazonaws.com:3000/d/rYdddlPWk/prometheus-node-exporter-full?orgId=1&refresh=1m&from=now-5m&to=now<br>

Metrics by Prometheus Exporters:<br>
http://ec2-18-192-65-217.eu-central-1.compute.amazonaws.com:9090/graph?g0.expr=http_requests_total&g0.tab=1&g0.stacked=0&g0.range_input=1h<br>

For Node Exporter: http://ec2-18-195-150-173.eu-central-1.compute.amazonaws.com:9100<br>
Use example query inside the Prometheus graph: promhttp_metric_handler_requests_total<br>

For Container Exporter: http://ec2-18-195-150-173.eu-central-1.compute.amazonaws.com:9104<br>
Use example query inside the Prometheus graph: container_blkio_io_serviced_recursive_total

Good Luck<br>

<img src="https://github.com/vasilinamatov/cap/blob/main/img.png">
<img src="https://github.com/vasilinamatov/cap/blob/main/ansible.png">
<img src="https://github.com/vasilinamatov/cap/blob/main/mon.png">
 
 