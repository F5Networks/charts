# alpha status

This chart is in an alpha status. It can be used to deploy an ingress with on simple service. 

Note that your [F5 k8s-bigip-ctlr](https://github.com/F5Networks/k8s-bigip-ctlr) should already be running in your cluster.

# Suggested Use

Copy the `values.yaml` file and use it as the basis for your own ingress specification and then pass your custom values file to:

```
helm repo add f5-incubator https://f5networks.github.io/charts/incubator
helm install -f path/to/custom-values.yaml f5-incubator/f5-bigip-ingress
```

Or

```
# from fork
helm install -f path/to/custom-values.yaml charts/src/incubator/f5-bigip-ingress/
```

If you have a specific use case for F5 products in the kubernetes environment that would benefit from a curated chart, please [open an issue](https://github.com/F5Networks/charts/issues) describing your use case and providing example resources.
