docker build -t linear:0.0.1 .
docker run linear:0.0.1
docker login
docker tag linear:0.0.4 shivaninatani/regression:linear
docker push shivaninatani/regression:linear
