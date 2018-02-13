# Alpha Status

This project is presently in alpha status and chart availabiliy in the helm repos below is limited and may be unstable.

# F5 Networks Helm Charts

To use the charts in this repository to deploy the [F5 k8s-bigip-ctlr](https://github.com/F5Networks/k8s-bigip-ctlr) using [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/) or [ConfigMap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/):

```
helm repo add f5-stable https://f5networks.github.io/charts/stable
helm install f5-stable/f5-bigip-ctlr
```

To access additional charts in beta:

```
helm repo add f5-incubator https://f5networks.github.io/charts/incubator
```

## Repository Structure

This repo contains packaged and versioned charts and their source. 

Charts in `/stable` have been tested and documented, charts in `/incubator` may not yet be fully tested and documented. 

Source for charts can be found in `source/stable` and `source/incubator` respectively.

