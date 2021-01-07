stage('Build') {
    steps {
         sh '''
            #!/bin/bash

            cat << EOF > run.sh
            apt update
            apt install docker.io
            systemctl enable --now docker
            docker ps --all
            docker image list
            docker --version
            apt install python3-pip python3-dev
            pip3 intsall flask
            EOF

            bash run.sh

            cat << EOF > requirements.txt
            Flask==1.0.2
            EOF

            # create docker file
            cat << EOF > Dockerfile
            FROM ubuntu:16.04
            RUN apt-get update -y && \
                apt-get install -y python3-pip python3-dev
            COPY ./requirements.txt /requirements.txt
            WORKDIR /
            RUN pip3 install -r requirements.txt
            COPY . /
            ENTRYPOINT [ "python3" ]
            CMD [ "app/app.py" ]
            EOF

            # create app file
            mkdir app
            cat << EOF > app/app.py
            from flask import Flask
            app = Flask(__name__)
            @app.route("/")
            def index():
              return """
              <h1>Python Flask in Docker!</h1>
              <p>A sample web-app for running Flask inside Docker.</p>
              """
            if __name__ == "__main__":
                app.run(debug=True, host='0.0.0.0')
            EOF

            #add rules to security group for inbound port 5000

            # create docker flask image
            docker build -t docker-flask:latest .

            # run docker
            docker run --name flaskapp -d -v$PWD/app:/app -p5000:5000 docker-flask:latest



         '''
    }
}