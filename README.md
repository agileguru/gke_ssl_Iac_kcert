# Assumption

* You have a public DNS for your website
* Use are using ingress controller like nginx
* You have kubectl access to the cluster  

# Installation

1. **Terraform IAC for creating k8s cluster**
    * > terraform init
    * > terraform apply

1. **Ingress Controller setup ( if not done already )**
    * > helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
    * > helm repo update ingress-nginx
    * > helm install nginx-ingress ingress-nginx/ingress-nginx
    * > kubectl delete -A ValidatingWebhookConfiguration nginx-ingress-ingress-nginx-admission

1. **Update DNS**
    * > kubectl get svc 
        ```
        NAME                                       TYPE           CLUSTER-IP    EXTERNAL-IP
        nginx-ingress-ingress-nginx-controller     LoadBalancer   10.52.0.17    35.239.122.122
        ```
    * > Get the public ip address and update dns for the hosts in your ingress
1. **Kcert Setup**
    * > kubectl create -f kcert/kcert.yml

1. **Kcert Check**
    * > kubectl get all -n kcert
        ```
        NAME                        READY   STATUS    RESTARTS   AGE
        pod/kcert-6ffbb9bf9-47979   1/1     Running   0          15h

        NAME            TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)           AGE
        service/kcert   ClusterIP   10.52.12.2   <none>        80/TCP,8080/TCP   15h

        NAME                    READY   UP-TO-DATE   AVAILABLE   AGE
        deployment.apps/kcert   1/1     1            1           15h

        NAME                              DESIRED   CURRENT   READY   AGE
        replicaset.apps/kcert-6ffbb9bf9   1         1         1       15h
        ```    
1. **Create ingress**
    * > kubectl create -f app/app.yaml
    * > kubectl create -f app/kcert-demo.yaml
    * > kubectl get secrets -A 
        ```
        NAME                     TYPE                  
        kcert-agileguru-org      kubernetes.io/tls
        ```

1. **Check Your app**
    * Open Your App in the browser ( https://kcert.agileguru.org )
    * Should show valid certificate :) 
    * Certificate issued by https://letsencrypt.org/
