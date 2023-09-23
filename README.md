# Apache-logs (container)
This is a clone from Ed Silva's [Github](https://github.com/edsiper/apache-logs).  <br />
This is a very simple container used to send mock Apache Web Server access log activity to STDOUT (every minute). <br />  
This container is used to demo different logging solutions e.g. [FluentBit](https://fluentbit.io/), etc when it comes to obtaining visibility via containerized workloads. <br />

## Build the container:
Azure Cloud Shell: 
```console
az acr build --registry aksregistryb3 --image apache-logs:v1 .
```
[Docker](https://www.docker.com/) (CLI): 
```console
cd apache-logs
chmod 755 gen.sh
docker build -t digitalkali/apache-logs .
```
```console
docker login
```
```console
docker push digitalkali/apache-logs:latest
```
```console
docker run -d --name apache-log digitalkali/apache-logs
```
```console
docker logs apache-log
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

```console
kubectl get pods
kubectl logs -f apache-log-6445545488-7vqmh
```
