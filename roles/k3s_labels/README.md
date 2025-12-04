<!-- DOCSIBLE START -->

# 📃 Role overview

## k3s_labels



Description: Apply .


| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 03/12/2025 |








### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Required    | Title       |
|--------------|--------------|-------------|------------|-------------|
| [k3s_labels_kubeconfig_path](defaults/main.yml#L9)   | str | `/etc/rancher/k3s/k3s.yaml` |    true  |  Kubeconfig path |
| [k3s_labels_kubeconfig_context](defaults/main.yml#L16)   | str | `default` |    true  |  Kubeconfig context |
| [k3s_labels_node_name](defaults/main.yml#L23)   | str | `{{ ansible_hostname }}` |    true  |  Node name |
| [k3s_labels_keep_default_labels](defaults/main.yml#L31)   | bool | `True` |    true  |  Keep default labels |
| [k3s_labels_append](defaults/main.yml#L39)   | dict | `{}` |    true  |  Labels to append |
| [k3s_labels_keep](defaults/main.yml#L48)   | list | `[]` |    true  |  Labels to keep |
| [k3s_labels_keep.**0**](defaults/main.yml#L48)   | str |  |    true  |  Labels to keep |
<details>
<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_labels_kubeconfig_path</b></td><td>Path to the kubeconfig file used to authenticate with the k3s cluster.<br>
This should point to the k3s-generated kubeconfig file on the server node.<br></td></tr>
<tr><td><b>k3s_labels_kubeconfig_context</b></td><td>The kubectl context to use from the kubeconfig file.<br>
Default is 'default', which is the standard context in k3s.<br></td></tr>
<tr><td><b>k3s_labels_node_name</b></td><td>The name of the Kubernetes node to manage labels for.<br>
Defaults to the Ansible hostname, which matches the k3s node name.<br></td></tr>
<tr><td><b>k3s_labels_keep_default_labels</b></td><td>Whether to preserve default Kubernetes labels on the node.<br>
When true, protects standard labels like kubernetes.io/hostname, arch, os, etc.<br>
Set to false if you want full control over node labels.<br></td></tr>
<tr><td><b>k3s_labels_append</b></td><td>Dictionary of custom labels to add or update on the node.<br>
These labels are merged with existing labels (or kept labels if specified).<br>
Example: { "node-type": "worker", "disk-type": "ssd", "zone": "us-east-1a" }<br></td></tr>
<tr><td><b>k3s_labels_keep</b></td><td>List of specific label keys to retain on the node.<br>
Labels not in this list (and not in default labels if enabled) will be removed.<br>
Use this for selective label management.<br>
Leave empty to not keep any specific labels beyond defaults.<br></td></tr>
<tr><td><b>k3s_labels_keep.0</b></td><td>List of specific label keys to retain on the node.<br>
Labels not in this list (and not in default labels if enabled) will be removed.<br>
Use this for selective label management.<br>
Leave empty to not keep any specific labels beyond defaults.<br></td></tr>
</table>
<br>
</details>


### Vars

**These are variables with higher priority**
#### File: vars/main.yml

| Var          | Type         | Value       |Required    | Title       |
|--------------|--------------|-------------|------------|-------------|
| [k3s_labels_default_labels](vars/main.yml#L11)   | list | `[]` |    true  |  Default Kubernetes labels |
| [k3s_labels_default_labels.**0**](vars/main.yml#L12)   | str | `beta.kubernetes.io/arch` |    None  |  None |
| [k3s_labels_default_labels.**1**](vars/main.yml#L13)   | str | `beta.kubernetes.io/instance-type` |    None  |  None |
| [k3s_labels_default_labels.**2**](vars/main.yml#L14)   | str | `beta.kubernetes.io/os` |    None  |  None |
| [k3s_labels_default_labels.**3**](vars/main.yml#L15)   | str | `kubernetes.io/arch` |    None  |  None |
| [k3s_labels_default_labels.**4**](vars/main.yml#L16)   | str | `kubernetes.io/hostname` |    None  |  None |
| [k3s_labels_default_labels.**5**](vars/main.yml#L17)   | str | `kubernetes.io/os` |    None  |  None |
| [k3s_labels_default_labels.**6**](vars/main.yml#L18)   | str | `node.kubernetes.io/instance-type` |    None  |  None |
| [k3s_labels_default_labels.**7**](vars/main.yml#L19)   | str | `node-role.kubernetes.io/etcd` |    None  |  None |
| [k3s_labels_default_labels.**8**](vars/main.yml#L20)   | str | `node-role.kubernetes.io/control-plane` |    None  |  None |
| [k3s_labels_default_labels.**9**](vars/main.yml#L21)   | str | `node-role.kubernetes.io/master` |    None  |  None |
<details>
<summary><b>🖇️ Full Descriptions for vars in vars/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_labels_default_labels</b></td><td>List of default Kubernetes label keys that should be protected from removal.<br>
These are standard labels that Kubernetes and k3s use for node management.<br>
When k3s_labels_keep_default_labels is true, these labels are preserved.<br>
Includes architecture, OS, hostname, instance type, and node role labels.<br></td></tr>
</table>
<br>
</details>


### Tasks


#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S Labels ¦ Get current node declaration | kubernetes.core.k8s_info | False |
| K3S Labels ¦ Fail if no or multiple nodes found | ansible.builtin.assert | False |
| K3S Labels ¦ Set current list on labels | ansible.builtin.set_fact | False |
| K3S Labels ¦ Prepare label dictionary to apply | block | False |
| K3S Labels ¦ Get list of labels to keep | ansible.builtin.set_fact | False |
| K3S Labels ¦ Get dict of labels to re-apply | ansible.builtin.set_fact | False |
| K3S Labels ¦ Add new labels to the append list | ansible.builtin.set_fact | False |
| K3S Labels ¦ Apply new labels to node | kubernetes.core.k8s_json_patch | False |
| K3S Labels ¦ Get current node declaration | kubernetes.core.k8s_info | False |







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
