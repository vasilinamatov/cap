# cap

Welcome to my home assignment!<br>
CI/CD Pipeline flow created in order to deploy the python web app based flask.

Two Releases with different Versions of the app are available. To switch between the versions change Release between 1 and 2 in file activate_release.yml<br>

Note: By changing the code and running git push in current github the webhook activates the Jenkins CI/CD Pipeline. Jenkins is running ansible code and placing the web app inside the docker and then exposing the port 5000 to the world<br>

Link to Jenkins: http://ec2-35-157-131-255.eu-central-1.compute.amazonaws.com:8080<br>
Link to Web App: http://ec2-35-157-131-255.eu-central-1.compute.amazonaws.com:5000<br>

Good Luck<br>

 