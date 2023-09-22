# Apache-logs (container)
This is a clone from Ed Silva's [Github](https://github.com/edsiper/apache-logs).  <br />
This is a very simple container used to send mock Apache Web Server access log activity to STDOUT (every few seconds). <br />  
This container is used to demo different logging solutions e.g. [FluentBit](https://fluentbit.io/), etc when it comes to obtaining visibility via containerized workloads. <br />

## Build the container:
Azure Cloud Shell: az acr build --registry aksregistryb3 --image apache-log:v1 . <br />

[Docker](https://www.docker.com/) (CLI): docker build -t digitalkali/apache-logs . <br />

# Kubernetes
Run the containerized workload: <br />
kubectl apply -f ./deployment.yaml

Delete the containerized workload: <br />
kubectl delete -f ./deployment.yaml
