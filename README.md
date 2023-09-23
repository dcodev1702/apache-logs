# Apache-logs (container)
This is a clone from Ed Silva's [Github](https://github.com/edsiper/apache-logs).  <br />
This is a very simple container used to send mock Apache Web Server access log activity to STDOUT (every few seconds). <br />  
This container is used to demo different logging solutions e.g. [FluentBit](https://fluentbit.io/), etc when it comes to obtaining visibility via containerized workloads. <br />

## Build the container:
Azure Cloud Shell: 
```console
az acr build --registry aksregistryb3 --image apache-log:v1 . <br />
```
[Docker](https://www.docker.com/) (CLI): 
```console
docker build -t digitalkali/apache-logs . <br />
```
```console
docker login
```
```console
docker push digitalkali/apache-logs:latest <br />
```

# Kubernetes
Run the containerized workload: <br />
```console
kubectl apply -f ./deployment.yaml
```

Delete the containerized workload: <br />
```console
kubectl delete -f ./deployment.yaml
```
