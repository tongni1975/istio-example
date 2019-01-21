# Create namespace

`kubectl create -f namespace.yaml`

`kubectl config set-context myapp --cluster=minikube --user=minikube --namespace=myapp`

`kubectl config use-context myapp`

# Without Istio

`kubectl create -f deployment-v1.yaml`

`kubectl create -f service.yaml`

`kubectl create -f ingress.yaml`

`kubectl create -f horizontalautoscaler.yaml`

# With Istio

`kubectl create -f < (istioctl kube-inject -f deployment-v1.yaml)`

`kubectl create -f < (istioctl kube-inject -f deployment-v2.yaml)`

`kubectl create -f service.yaml`

`kubectl create -f gateway.yaml`

`kubectl create -f destinationrule.yaml`

`kubectl create -f virtualservice.yaml`

See this [blog](https://medium.com/devopslinks/istio-step-by-step-part-02-getting-started-with-istio-c24ed8137741) for step-by-step Istio setup
