# apache-logs (container)
This is a clone from Ed Silvia's [Github](https://github.com/edsiper/apache-logs).  <br />
This is a very simple container used to send mock Apache Web Server access log activity to STDOUT (every few seconds). <br />  
This container is used to demo different logging solutions e.g. [FluentBit](https://fluentbit.io/), etc when it comes to obtaining visibility via containerized workloads. <br />

# Kubernetes
Run the containerized workload
kubectl apply -f ./deployment.yaml

Delete the containerized workload
kubectl delete -f ./deployment.yaml
