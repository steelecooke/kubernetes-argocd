# ArgoCD Deployment Template

## Summary

This is a testing repository for deploying ArgoCD to a Kubernetes Cluster using Ansible then allowing it to manage the Kubernetes infrastructure by providing the neccessary repositories and application manifests.

## Tips

1. Port Forward local services

Grafana GUI

```
k port-forward svc/prometheus-community-grafana -n monitoring 8081:80
```

ArgoCD GUI

```
k port-forward svc/argocd-server -n argocd 8080:443
```

2. In ArgoCD when deploying kube-prom-stack we use a Server Side apply because of the CRD length issues

## References

Initial Ansible Configuration - https://github.com/wikitops/ansible_kubernetes_argocd/tree/master
MiniKube Local Setup - https://medium.com/@mehmetodabashi/installing-argocd-on-minikube-and-deploying-a-test-application-caa68ec55fbf
