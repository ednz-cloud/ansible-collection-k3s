## v0.3.0 (2026-01-24)

### Feat

- add uv for dependency management
- **roles**: add k3s_tests role

### Fix

- **roles/k3s_tests**: adjust workload testing for older ansible versions

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
