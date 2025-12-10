## v0.2.0 (2025-12-10)

### Feat

- rename collection to ednz_cloud.k3s

### Fix

- **roles/k3s**: remove from_yaml deprecated filter on already dict object when deep merging configuration
- **roles/k3s**: remove ansible_managed variable ahead of deprecation
- **roles/k3s**: typo in install task name

## v0.1.0 (2024-10-05)

### Feat

- add k3s_labels role
- add tls-san to server configuration
- add agent configuration or k3s role
- add first working k3s role
- add collections structure
- add boilerplate files
