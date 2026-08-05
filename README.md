## Usage
### Please copy paste below code:

```
module demo {
    source             = "devdot4/gke/gcp"
    gke_config = {
        cluster_name   = "project-cluster"
        location       = "us-central1"
        node_count     = 1
        min_node_count = 1
        max_node_count = 2
        machine_type   = "e2-medium"
        disk_size_gb   = 100
        disk_type      = "pd-balanced"
    }
}
```

### Run
```
terraform init
terraform apply
```

## Outputs

| Name | Description |
|------|-------------|
| `cluster_name` | The name of the GKE cluster |
| `cluster_location` | The location (region or zone) of the GKE cluster |