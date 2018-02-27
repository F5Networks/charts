# Alpha status

This chart is in an alpha status. It can be used to deploy the __development__ image of the [F5 k8s-bigip-ctlr](https://github.com/F5Networks/k8s-bigip-ctlr). The stable image will be available in a stable chart.

To deploy the k8s-bigip-ctlr with this chart the following must be true of your cluster:
- A secret for the BigIP must exist and be named as in the values file, or passed using `--set` or `-f your_values.yaml`.
- The partition must exist and be named as in the values file, or passed using `--set` or `-f your_values.yaml`.
- The BigIP management url must be passed as an argument using `--set` or configured in a values file.

If using the names in the default values;

```
helm repo add f5-incubator https://f5networks.github.io/charts/incubator
helm install --set args.bigip_url=1.2.3.4 f5-incubator/f5-bigip-ctlr
```

Or

```
# from fork
helm install --set args.bigip_url=1.2.3.4 charts/src/incubator/f5-bigip-ctlr
```

If you have a specific use case for F5 products in the kubernetes environment that would benefit from a curated chart, please [open an issue](https://github.com/F5Networks/charts/issues) describing your use case and providing example resources.
