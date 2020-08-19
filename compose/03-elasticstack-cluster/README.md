# README

For running Elasticsearch cluster is required to execute `sysctl -w vm.max_map_count=262144`
Execute `sysctl -w vm.max_map_count=65530` to restore a default value.

## WSL|WSL2|Linux

```shell
sysctl -w vm.max_map_count=262144
```

## Docker Desktop Hyper-V VM|MacOS

???
