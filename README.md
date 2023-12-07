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
docker run -d --rm --name apache-logs digitalkali/apache-logs
```
```console
docker logs -f apache-logs
```
```console
docker exec -it apache-logs /bin/sh
```

# Kubernetes
Create the 'web' namespace before running the workload (container) <br />
```console
kubectl create namespace web
```

Run the containerized workload: <br />
```console
kubectl create -f ./deployment.yaml
```

Delete the containerized workload: <br />
```console
kubectl delete -f ./deployment.yaml
```

Display apache-log mock access log <br />
```console
kubectl logs -n web -f $(kubectl get pods -n web -l app=apache-logs -o jsonpath='{.items[0].metadata.name}')
```
