<!-- DOCSIBLE START -->

# 📃 Role overview

## k3s_tests



Description: Testing helper role for k3s collection molecule scenarios


| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 14/12/2025 |








### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Required    | Title       |
|--------------|--------------|-------------|------------|-------------|
| [k3s_tests_include_tests](defaults/main.yml#L15)   | list | `[]` |    true  |  K3s tests to include |
| [k3s_tests_binary_path](defaults/main.yml#L22)   | str | `/usr/local/bin/k3s` |    false  |  K3s binary path |
| [k3s_tests_config_dir](defaults/main.yml#L29)   | str | `/etc/rancher/k3s` |    false  |  K3s config directory |
| [k3s_tests_data_dir](defaults/main.yml#L36)   | str | `/var/lib/rancher/k3s` |    false  |  K3s data directory |
| [k3s_tests_kubeconfig_path](defaults/main.yml#L43)   | str | `/etc/rancher/k3s/k3s.yaml` |    false  |  K3s kubeconfig path |
| [k3s_tests_service_name](defaults/main.yml#L50)   | str | `k3s` |    false  |  K3s service name |
| [k3s_tests_mode](defaults/main.yml#L57)   | str | `server` |    false  |  K3s mode |
| [k3s_tests_expected_node_count](defaults/main.yml#L65)   | int | `0` |    false  |  Expected node count |
| [k3s_tests_expected_labels](defaults/main.yml#L73)   | dict | `{}` |    false  |  Expected labels |
| [k3s_tests_absent_labels](defaults/main.yml#L81)   | list | `[]` |    false  |  Absent labels |
| [k3s_tests_delegate_to](defaults/main.yml#L92)   | str |  |    false  |  Delegate API tests to |
| [k3s_tests_workload_namespace](defaults/main.yml#L99)   | str | `k3s-test-workload` |    false  |  Workload test namespace |
| [k3s_tests_workload_name](defaults/main.yml#L106)   | str | `nginx-test` |    false  |  Workload test name |
| [k3s_tests_workload_cleanup](defaults/main.yml#L114)   | bool | `True` |    false  |  Workload test cleanup |
| [k3s_tests_workload_image](defaults/main.yml#L121)   | str | `nginx:alpine` |    false  |  Workload test image |
| [k3s_tests_workload_nodeport](defaults/main.yml#L129)   | int | `30080` |    false  |  Workload test NodePort |
<details>
<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_tests_include_tests</b></td><td>List of test modules to execute during verification.<br>
Available tests:<br>
- installation: Verify k3s binary, directories, config files, and systemd service<br>
- cluster-health: Verify cluster nodes exist and are ready<br>
- core-resources: Verify default namespaces and system pods are running<br>
- labels: Verify node labels (apply/remove operations)<br>
- workload: Deploy nginx workload with NodePort to verify cluster functionality<br>
Example: ["installation", "cluster-health", "core-resources"]<br></td></tr>
<tr><td><b>k3s_tests_binary_path</b></td><td>Path to the k3s binary to verify.<br>
Default: /usr/local/bin/k3s<br></td></tr>
<tr><td><b>k3s_tests_config_dir</b></td><td>Path to the k3s configuration directory.<br>
Default: /etc/rancher/k3s<br></td></tr>
<tr><td><b>k3s_tests_data_dir</b></td><td>Path to the k3s data directory.<br>
Default: /var/lib/rancher/k3s<br></td></tr>
<tr><td><b>k3s_tests_kubeconfig_path</b></td><td>Path to the kubeconfig file for k3s cluster access.<br>
Default: /etc/rancher/k3s/k3s.yaml<br></td></tr>
<tr><td><b>k3s_tests_service_name</b></td><td>Name of the k3s systemd service.<br>
Default: k3s<br></td></tr>
<tr><td><b>k3s_tests_mode</b></td><td>K3s mode (server or agent) for service file verification.<br>
Default: server<br></td></tr>
<tr><td><b>k3s_tests_expected_node_count</b></td><td>Expected number of cluster nodes (for cluster-health test).<br>
Set to 0 to skip node count verification.<br>
Default: 0<br></td></tr>
<tr><td><b>k3s_tests_expected_labels</b></td><td>Dictionary of expected labels that should be present on the node.<br>
Used by the labels test module.<br>
Example: { "environment": "production", "managed-by": "molecule" }<br></td></tr>
<tr><td><b>k3s_tests_absent_labels</b></td><td>List of labels that should NOT be present on the node.<br>
Used by the labels test module to verify label removal.<br>
Example: ["prepare-label", "initial-setup", "stage"]<br></td></tr>
<tr><td><b>k3s_tests_delegate_to</b></td><td>Host to delegate Kubernetes API calls to (for multi-node scenarios).<br>
Worker nodes don't have kubeconfig, so API calls should be delegated to a controller node.<br>
Set to 'auto' to automatically delegate to first host in k3s_controller group.<br>
Set to a specific hostname to delegate to that host.<br>
Set to empty string '' to disable delegation (default for single-node tests).<br>
Example: "auto" or "molecule-k3s-controller-1.ednz.fr"<br></td></tr>
<tr><td><b>k3s_tests_workload_namespace</b></td><td>Namespace to use for workload test deployments.<br>
Default: k3s-test-workload<br></td></tr>
<tr><td><b>k3s_tests_workload_name</b></td><td>Name prefix for workload test resources (deployment, service).<br>
Default: nginx-test<br></td></tr>
<tr><td><b>k3s_tests_workload_cleanup</b></td><td>Whether to cleanup workload test resources after verification.<br>
Set to false to leave resources for manual inspection.<br>
Default: true<br></td></tr>
<tr><td><b>k3s_tests_workload_image</b></td><td>Container image to use for workload testing.<br>
Default: nginx:alpine<br></td></tr>
<tr><td><b>k3s_tests_workload_nodeport</b></td><td>NodePort to use for workload service.<br>
Set to 0 to let Kubernetes assign a random port.<br>
Default: 30080<br></td></tr>
</table>
<br>
</details>


### Vars

**These are variables with higher priority**
#### File: vars/main.yml

| Var          | Type         | Value       | Title       |
|--------------|--------------|-------------|-------------|
| [k3s_tests_service_file_path](vars/main.yml#L7)   | str | `/etc/systemd/system/{{ k3s_tests_service_name }}.service` |     K3s service file path |
| [k3s_tests_config_file_path](vars/main.yml#L12)   | str | `{{ k3s_tests_config_dir }}/k3s.config.yml` |     K3s config file path |
| [k3s_tests_env_file_path](vars/main.yml#L17)   | str | `{{ k3s_tests_config_dir }}/k3s.env` |     K3s environment file path |
| [k3s_tests_delegation_target](vars/main.yml#L22)   | str | `<multiline value: folded_strip>` |     Computed delegation target |
<details>
<summary><b>🖇️ Full Descriptions for vars in vars/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_tests_service_file_path</b></td><td>Path to the k3s systemd service file<br></td></tr>
<tr><td><b>k3s_tests_config_file_path</b></td><td>Path to the k3s main configuration file<br></td></tr>
<tr><td><b>k3s_tests_env_file_path</b></td><td>Path to the k3s environment variables file<br></td></tr>
<tr><td><b>k3s_tests_delegation_target</b></td><td>Automatically computed delegation target based on k3s_tests_delegate_to setting<br></td></tr>
</table>
<br>
</details>


### Tasks


#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Include installation tests | ansible.builtin.include_tasks | True |
| K3S Tests ¦ Include cluster-health tests | ansible.builtin.include_tasks | True |
| K3S Tests ¦ Include core-resources tests | ansible.builtin.include_tasks | True |
| K3S Tests ¦ Include labels tests | ansible.builtin.include_tasks | True |
| K3S Tests ¦ Include workload tests | ansible.builtin.include_tasks | True |

#### File: tasks/tests/cluster-health.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Cluster Health ¦ Test k3s cluster nodes | block | False |
| K3S Tests ¦ Cluster Health ¦ Get k3s cluster nodes | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Cluster Health ¦ Verify k3s cluster nodes | ansible.builtin.assert | False |

#### File: tasks/tests/core-resources.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Core Resources ¦ Test k3s default namespaces | block | False |
| K3S Tests ¦ Core Resources ¦ Get k3s namespaces | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Core Resources ¦ Verify k3s default namespaces | ansible.builtin.assert | False |
| K3S Tests ¦ Core Resources ¦ Test k3s core system pods | block | False |
| K3S Tests ¦ Core Resources ¦ Get k3s system pods | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Core Resources ¦ Verify k3s core system pods | ansible.builtin.assert | False |

#### File: tasks/tests/installation.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Installation ¦ Test binary {{ k3s_tests_binary_path }} | block | False |
| K3S Tests ¦ Installation ¦ Stat binary {{ k3s_tests_binary_path }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Verify binary {{ k3s_tests_binary_path }} | ansible.builtin.assert | False |
| K3S Tests ¦ Installation ¦ Test directory {{ k3s_tests_config_dir }} | block | False |
| K3S Tests ¦ Installation ¦ Stat directory {{ k3s_tests_config_dir }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Stat file {{ k3s_tests_env_file_path }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Stat file {{ k3s_tests_config_file_path }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Slurp file {{ k3s_tests_config_file_path }} | ansible.builtin.slurp | False |
| K3S Tests ¦ Installation ¦ Verify directory {{ k3s_tests_config_dir }} | ansible.builtin.assert | False |
| K3S Tests ¦ Installation ¦ Test directory {{ k3s_tests_data_dir }} | block | False |
| K3S Tests ¦ Installation ¦ Stat directory {{ k3s_tests_data_dir }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Verify directory {{ k3s_tests_data_dir }} | ansible.builtin.assert | False |
| K3S Tests ¦ Installation ¦ Test service {{ k3s_tests_service_name }} | block | False |
| K3S Tests ¦ Installation ¦ Get service {{ k3s_tests_service_name }} | ansible.builtin.service_facts | False |
| K3S Tests ¦ Installation ¦ Stat file {{ k3s_tests_service_file_path }} | ansible.builtin.stat | False |
| K3S Tests ¦ Installation ¦ Slurp file {{ k3s_tests_service_file_path }} | ansible.builtin.slurp | False |
| K3S Tests ¦ Installation ¦ Verify service {{ k3s_tests_service_name }} | ansible.builtin.assert | False |

#### File: tasks/tests/labels.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Labels ¦ Test expected labels are applied | block | True |
| K3S Tests ¦ Labels ¦ Get node labels | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Labels ¦ Verify expected labels exist | ansible.builtin.assert | False |
| K3S Tests ¦ Labels ¦ Test absent labels are removed | block | True |
| K3S Tests ¦ Labels ¦ Get node labels | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Labels ¦ Verify absent labels are not present | ansible.builtin.assert | False |
| K3S Tests ¦ Labels ¦ Test default Kubernetes labels are preserved | block | False |
| K3S Tests ¦ Labels ¦ Get node labels | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Labels ¦ Verify default labels are present | ansible.builtin.assert | False |

#### File: tasks/tests/workload.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Tests ¦ Workload ¦ Create test namespace | kubernetes.core.k8s | False |
| K3S Tests ¦ Workload ¦ Deploy nginx test workload | kubernetes.core.k8s | False |
| K3S Tests ¦ Workload ¦ Create NodePort service | kubernetes.core.k8s | False |
| K3S Tests ¦ Workload ¦ Wait for deployment to be ready | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Workload ¦ Get deployment status | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Workload ¦ Get pod status | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Workload ¦ Verify deployment and service | ansible.builtin.assert | False |
| K3S Tests ¦ Workload ¦ Cleanup test resources | block | True |
| K3S Tests ¦ Workload ¦ Delete test namespace | kubernetes.core.k8s | False |
| K3S Tests ¦ Workload ¦ Wait for namespace deletion | kubernetes.core.k8s_info | False |
| K3S Tests ¦ Workload ¦ Warn if namespace still exists | ansible.builtin.debug | True |







## Author Information
Bertrand Lanson

#### License

license (BSD, MIT)

#### Minimum Ansible Version

2.10

#### Platforms

- **Ubuntu**: ['focal', 'jammy', 'noble']
- **Debian**: ['bullseye', 'bookworm']


#### Dependencies

No dependencies specified.
<!-- DOCSIBLE END -->
