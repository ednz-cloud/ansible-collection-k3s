<!-- DOCSIBLE START -->

# 📃 Role overview

## k3s



Description: Install and configure k3s.


| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 03/12/2025 |








### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Required    | Title       |
|--------------|--------------|-------------|------------|-------------|
| [k3s_version](defaults/main.yml#L10)   | str | `v1.31.1+k3s1` |    true  |  K3s version |
| [k3s_start_service](defaults/main.yml#L17)   | bool | `True` |    true  |  Start service |
| [k3s_config_dir](defaults/main.yml#L24)   | str | `/etc/rancher/k3s` |    true  |  Configuration directory |
| [k3s_data_dir](defaults/main.yml#L31)   | str | `/var/lib/rancher/k3s` |    true  |  Data directory |
| [k3s_env_variables](defaults/main.yml#L39)   | dict | `{}` |    true  |  Environment variables |
| [k3s_extra_files](defaults/main.yml#L46)   | bool | `False` |    true  |  Deploy extra files |
| [k3s_extra_files_list](defaults/main.yml#L55)   | list | `[]` |    true  |  Extra files list |
| [k3s_mode](defaults/main.yml#L63)   | str | `server` |    true  |  Node mode |
| [k3s_join_addr](defaults/main.yml#L72)   | NoneType | `None` |    false  |  Join address |
| [k3s_server_join_token](defaults/main.yml#L80)   | str | `CHANGEME!CHANGEME!CHANGEME!CHANGEME!` |    true  |  Server join token |
| [k3s_agent_join_token](defaults/main.yml#L88)   | str | `{{ k3s_server_join_token }}` |    true  |  Agent join token |
| [k3s_logging_options](defaults/main.yml#L97)   | dict | `{}` |    true  |  Logging options |
| [k3s_server_cluster_init](defaults/main.yml#L108)   | bool | `False` |    true  |  Initialize cluster |
| [k3s_server_listen_port](defaults/main.yml#L115)   | int | `6443` |    true  |  Server listen port |
| [k3s_server_advertise_addr](defaults/main.yml#L123)   | str | `{{ ansible_default_ipv4.address }}` |    true  |  Server advertise address |
| [k3s_server_tls_sans](defaults/main.yml#L131)   | list | `[]` |    true  |  TLS SANs |
| [k3s_server_tls_sans.**0**](defaults/main.yml#L132)   | str | `{{ ansible_default_ipv4.address }}` |    None  |  None |
| [k3s_server_tls_sans.**1**](defaults/main.yml#L133)   | str | `{{ ansible_hostname }}` |    None  |  None |
| [k3s_server_enable_secrets_encryption](defaults/main.yml#L141)   | bool | `False` |    true  |  Enable secrets encryption |
| [k3s_server_listeners_options](defaults/main.yml#L149)   | dict | `{}` |    true  |  Listener options |
| [k3s_server_listeners_options.**bind-address**](defaults/main.yml#L150)   | str | `0.0.0.0` |    None  |  None |
| [k3s_server_listeners_options.**https-listen-port**](defaults/main.yml#L151)   | int | `6443` |    None  |  None |
| [k3s_server_listeners_options.**advertise-address**](defaults/main.yml#L152)   | str | `{{ k3s_server_advertise_addr }}` |    None  |  None |
| [k3s_server_listeners_options.**advertise-port**](defaults/main.yml#L153)   | str | `{{ k3s_server_listen_port }}` |    None  |  None |
| [k3s_server_datastore_options](defaults/main.yml#L162)   | dict | `{}` |    true  |  Datastore options |
| [k3s_server_networking_options](defaults/main.yml#L170)   | dict | `{}` |    true  |  Networking options |
| [k3s_server_networking_options.**cluster-cidr**](defaults/main.yml#L171)   | str | `10.42.0.0/16` |    None  |  None |
| [k3s_server_networking_options.**service-cidr**](defaults/main.yml#L172)   | str | `10.43.0.0/16` |    None  |  None |
| [k3s_server_networking_options.**service-node-port-range**](defaults/main.yml#L173)   | str | `30000-32767` |    None  |  None |
| [k3s_server_networking_options.**cluster-dns**](defaults/main.yml#L174)   | str | `10.43.0.10` |    None  |  None |
| [k3s_server_networking_options.**cluster-domain**](defaults/main.yml#L175)   | str | `cluster.local` |    None  |  None |
| [k3s_server_networking_options.**flannel-backend**](defaults/main.yml#L176)   | str | `vxlan` |    None  |  None |
| [k3s_server_components_options](defaults/main.yml#L185)   | dict | `{}` |    true  |  Component options |
| [k3s_server_components_options.**disable**](defaults/main.yml#L186)   | list | `[]` |    None  |  None |
| [k3s_server_components_options.disable.**0**](defaults/main.yml#L187)   | str | `traefik` |    None  |  None |
| [k3s_server_components_options.disable.**1**](defaults/main.yml#L188)   | str | `local-storage` |    None  |  None |
| [k3s_server_components_options.disable.**2**](defaults/main.yml#L189)   | str | `servicelb` |    None  |  None |
| [k3s_server_experimental_options](defaults/main.yml#L197)   | dict | `{}` |    true  |  Experimental options |
| [k3s_server_storage_class_options](defaults/main.yml#L205)   | dict | `{}` |    true  |  Storage class options |
| [k3s_server_processes_flags_options](defaults/main.yml#L214)   | dict | `{}` |    true  |  Kubernetes process flags |
| [k3s_agent_networking_options](defaults/main.yml#L225)   | dict | `{}` |    true  |  Agent networking options |
| [k3s_agent_node_options](defaults/main.yml#L233)   | dict | `{}` |    true  |  Agent node options |
| [k3s_agent_runtime_options](defaults/main.yml#L241)   | dict | `{}` |    true  |  Agent runtime options |
| [k3s_agent_processes_flags_options](defaults/main.yml#L249)   | dict | `{}` |    true  |  Agent process flags |
| [k3s_agent_experimental_options](defaults/main.yml#L257)   | dict | `{}` |    true  |  Agent experimental options |
<details>
<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_version</b></td><td>The version of k3s to install.<br>
Must be a valid k3s release tag from the k3s-io/k3s repository.<br>
Example: "v1.31.1+k3s1"<br></td></tr>
<tr><td><b>k3s_start_service</b></td><td>Whether to start and enable the k3s service after installation.<br>
Set to false if you want to manually manage the service.<br></td></tr>
<tr><td><b>k3s_config_dir</b></td><td>Path to the k3s configuration directory.<br>
This is where k3s.config.yml, tokens, and other config files will be stored.<br></td></tr>
<tr><td><b>k3s_data_dir</b></td><td>Path to the k3s data directory.<br>
This is where k3s stores cluster data, including the datastore.<br></td></tr>
<tr><td><b>k3s_env_variables</b></td><td>Dictionary of environment variables to pass to the k3s service.<br>
These are written to the k3s.env file and loaded by systemd.<br>
Example: { "HTTP_PROXY": "http://proxy:8080" }<br></td></tr>
<tr><td><b>k3s_extra_files</b></td><td>Whether to deploy extra files to the k3s configuration directory.<br>
Set to true to enable deploying files from k3s_extra_files_list.<br></td></tr>
<tr><td><b>k3s_extra_files_list</b></td><td>List of extra files to deploy to the k3s nodes.<br>
Each item should have 'src' (local path) and 'dest' (remote path).<br>
Files are templated using Jinja2 if they have .j2 extension.<br>
Example: [{ src: "/path/to/file.yml.j2", dest: "/etc/rancher/k3s/file.yml" }]<br></td></tr>
<tr><td><b>k3s_mode</b></td><td>The mode in which k3s should run on this node.<br>
Valid values are "server" (control plane) or "agent" (worker node).<br>
Server nodes can also run workloads unless tainted.<br></td></tr>
<tr><td><b>k3s_join_addr</b></td><td>The address of the k3s server to join.<br>
Required for agent nodes and additional server nodes in HA setup.<br>
Should be in format "https://server:6443"<br>
Leave undefined for the first server node with cluster-init enabled.<br></td></tr>
<tr><td><b>k3s_server_join_token</b></td><td>Token used for server nodes to join the cluster.<br>
IMPORTANT: Change this to a secure random value in production!<br>
This token allows new servers to join the control plane.<br></td></tr>
<tr><td><b>k3s_agent_join_token</b></td><td>Token used for agent nodes to join the cluster.<br>
Defaults to the server token, but can be set separately for better security.<br>
This token allows new agents to join as worker nodes.<br></td></tr>
<tr><td><b>k3s_logging_options</b></td><td>Dictionary of logging configuration options for k3s.<br>
See https://docs.k3s.io/cli/server#logging for server options<br>
See https://docs.k3s.io/cli/agent#logging for agent options<br>
Example: { "log": "/var/log/k3s.log", "log-format": "json" }<br></td></tr>
<tr><td><b>k3s_server_cluster_init</b></td><td>Whether to initialize a new cluster with embedded etcd.<br>
Set to true ONLY on the first server node.<br>
All other nodes should join using k3s_join_addr.<br></td></tr>
<tr><td><b>k3s_server_listen_port</b></td><td>The port on which the k3s API server listens.<br>
Default is 6443 (standard Kubernetes API port).<br></td></tr>
<tr><td><b>k3s_server_advertise_addr</b></td><td>The IP address to advertise for the API server.<br>
Defaults to the node's default IPv4 address.<br>
Use a specific IP if the node has multiple interfaces.<br></td></tr>
<tr><td><b>k3s_server_tls_sans</b></td><td>List of Subject Alternative Names (SANs) to add to the TLS certificate.<br>
Should include all IPs and hostnames used to access the API server.<br>
This allows connecting via load balancer IPs, DNS names, etc.<br></td></tr>
<tr><td><b>k3s_server_enable_secrets_encryption</b></td><td>Whether to enable encryption at rest for Kubernetes secrets.<br>
When enabled, secrets are encrypted in etcd using AES-CBC.<br>
Recommended for production clusters handling sensitive data.<br></td></tr>
<tr><td><b>k3s_server_listeners_options</b></td><td>Dictionary of listener configuration options for the API server.<br>
See https://docs.k3s.io/cli/server#listeners for configuration options<br>
Controls bind addresses and advertised endpoints.<br></td></tr>
<tr><td><b>k3s_server_datastore_options</b></td><td>Dictionary of datastore configuration options.<br>
See https://docs.k3s.io/cli/server#database for configuration options<br>
Use this to configure external datastore (etcd, PostgreSQL, MySQL).<br>
Example: { "datastore-endpoint": "postgres://user:pass@host:5432/k3s" }<br></td></tr>
<tr><td><b>k3s_server_networking_options</b></td><td>Dictionary of networking configuration options for the cluster.<br>
See https://docs.k3s.io/cli/server#networking for configuration options<br>
Controls pod/service CIDRs, CNI plugin, and DNS settings.<br></td></tr>
<tr><td><b>k3s_server_components_options</b></td><td>Dictionary of Kubernetes component configuration options.<br>
See https://docs.k3s.io/cli/server#kubernetes-components for configuration options<br>
Use 'disable' key to disable default k3s components.<br>
By default, traefik, local-storage, and servicelb are disabled.<br></td></tr>
<tr><td><b>k3s_server_experimental_options</b></td><td>Dictionary of experimental feature flags for k3s server.<br>
See https://docs.k3s.io/cli/server#experimental-options for configuration options<br>
Use with caution as these features may be unstable.<br></td></tr>
<tr><td><b>k3s_server_storage_class_options</b></td><td>Dictionary of storage class configuration options.<br>
See https://docs.k3s.io/cli/server#storage-class for configuration options<br>
Configure default storage class behavior and local-path provisioner.<br></td></tr>
<tr><td><b>k3s_server_processes_flags_options</b></td><td>Dictionary of custom flags for Kubernetes components.<br>
See https://docs.k3s.io/cli/server#customized-flags-for-kubernetes-processes for configuration options<br>
Allows passing custom flags to kube-apiserver, kube-controller-manager, etc.<br>
Example: { "kube-apiserver-arg": ["enable-admission-plugins=PodSecurity"] }<br></td></tr>
<tr><td><b>k3s_agent_networking_options</b></td><td>Dictionary of networking configuration options for agent nodes.<br>
See https://docs.k3s.io/cli/agent#networking for configuration options<br>
Configure node IP, VPN flags, and network-related settings.<br></td></tr>
<tr><td><b>k3s_agent_node_options</b></td><td>Dictionary of node configuration options for agent nodes.<br>
See https://docs.k3s.io/cli/agent#node for configuration options<br>
Configure node labels, taints, and node-specific settings.<br></td></tr>
<tr><td><b>k3s_agent_runtime_options</b></td><td>Dictionary of container runtime configuration options for agent nodes.<br>
See https://docs.k3s.io/cli/agent#runtime for configuration options<br>
Configure containerd, image registry, and runtime-related settings.<br></td></tr>
<tr><td><b>k3s_agent_processes_flags_options</b></td><td>Dictionary of custom flags for agent Kubernetes components.<br>
See https://docs.k3s.io/cli/agent#customized-flags for configuration options<br>
Allows passing custom flags to kubelet and kube-proxy.<br></td></tr>
<tr><td><b>k3s_agent_experimental_options</b></td><td>Dictionary of experimental feature flags for k3s agent.<br>
See https://docs.k3s.io/cli/agent#experimental for configuration options<br>
Use with caution as these features may be unstable.<br></td></tr>
</table>
<br>
</details>


### Vars

**These are variables with higher priority**
#### File: vars/main.yml

| Var          | Type         | Value       |Required    | Title       |
|--------------|--------------|-------------|------------|-------------|
| [k3s_binary_path](vars/main.yml#L9)   | str | `/usr/local/bin/k3s` |    true  |  K3s binary path |
| [k3s_config_path](vars/main.yml#L16)   | str | `{{ k3s_config_dir }}/k3s.config.yml` |    true  |  Config file path |
| [k3s_server_token_file_path](vars/main.yml#L23)   | str | `{{ k3s_config_dir }}/server_token` |    true  |  Server token file path |
| [k3s_agent_token_file_path](vars/main.yml#L30)   | str | `{{ k3s_config_dir }}/agent_token` |    true  |  Agent token file path |
| [k3s_service_name](vars/main.yml#L37)   | str | `k3s` |    true  |  Service name |
| [k3s_user](vars/main.yml#L44)   | str | `root` |    true  |  K3s user |
| [k3s_group](vars/main.yml#L51)   | str | `root` |    true  |  K3s group |
| [k3s_github_api](vars/main.yml#L58)   | str | `https://api.github.com/repos` |    true  |  GitHub API URL |
| [k3s_github_project](vars/main.yml#L65)   | str | `k3s-io/k3s` |    true  |  GitHub project |
| [k3s_github_url](vars/main.yml#L72)   | str | `https://github.com` |    true  |  GitHub URL |
| [k3s_deb_architecture_map](vars/main.yml#L79)   | dict | `{}` |    true  |  Debian architecture map |
| [k3s_deb_architecture_map.**x86_64**](vars/main.yml#L80)   | str | `amd64` |    None  |  None |
| [k3s_deb_architecture_map.**aarch64**](vars/main.yml#L81)   | str | `arm64` |    None  |  None |
| [k3s_deb_architecture_map.**armv7l**](vars/main.yml#L82)   | str | `arm` |    None  |  None |
| [k3s_deb_architecture_map.**armv6l**](vars/main.yml#L83)   | str | `arm` |    None  |  None |
| [k3s_architecture](vars/main.yml#L90)   | str | `{{ k3s_deb_architecture_map[ansible_architecture] ¦ default(ansible_architecture) }}` |    true  |  Architecture |
| [k3s_default_join_addr](vars/main.yml#L97)   | str | `https://localhost:6443` |    true  |  Default join address |
| [k3s_needs_to_join](vars/main.yml#L105)   | str | `<multiline value: folded_strip>` |    true  |  Needs to join |
| [k3s_write_kubeconfig_mode](vars/main.yml#L117)   | str | `0644` |    true  |  Write kubeconfig mode |
| [k3s_configuration](vars/main.yml#L124)   | dict | `{}` |    true  |  Base configuration |
| [k3s_configuration.**data-dir**](vars/main.yml#L125)   | str | `{{ k3s_data_dir }}` |    None  |  None |
| [k3s_server_configuration](vars/main.yml#L133)   | dict | `{}` |    true  |  Server configuration |
| [k3s_server_configuration.**cluster-init**](vars/main.yml#L134)   | str | `{{ k3s_server_cluster_init if k3s_server_cluster_init else omit }}` |    None  |  None |
| [k3s_server_configuration.**server**](vars/main.yml#L135)   | str | `{{ k3s_join_addr if k3s_needs_to_join else omit }}` |    None  |  None |
| [k3s_server_configuration.**secrets-encryption**](vars/main.yml#L136)   | str | `{{ k3s_server_enable_secrets_encryption }}` |    None  |  None |
| [k3s_server_configuration.**token-file**](vars/main.yml#L137)   | str | `{{ k3s_server_token_file_path }}` |    None  |  None |
| [k3s_server_configuration.**agent-token-file**](vars/main.yml#L138)   | str | `{{ k3s_agent_token_file_path }}` |    None  |  None |
| [k3s_server_configuration.**tls-san**](vars/main.yml#L139)   | str | `{{ k3s_server_tls_sans }}` |    None  |  None |
| [k3s_agent_configuration](vars/main.yml#L147)   | dict | `{}` |    true  |  Agent configuration |
| [k3s_agent_configuration.**server**](vars/main.yml#L148)   | str | `{{ k3s_join_addr }}` |    None  |  None |
| [k3s_agent_configuration.**token-file**](vars/main.yml#L149)   | str | `{{ k3s_agent_token_file_path }}` |    None  |  None |
<details>
<summary><b>🖇️ Full Descriptions for vars in vars/main.yml</b></summary>
<br>
<table>
<th>Var</th><th>Description</th>
<tr><td><b>k3s_binary_path</b></td><td>Path to the k3s binary on the target system.<br>
The k3s binary is installed to this location.<br></td></tr>
<tr><td><b>k3s_config_path</b></td><td>Path to the main k3s configuration file.<br>
This YAML file contains all k3s configuration options.<br></td></tr>
<tr><td><b>k3s_server_token_file_path</b></td><td>Path to the file containing the server join token.<br>
This token is used by server nodes to join the cluster.<br></td></tr>
<tr><td><b>k3s_agent_token_file_path</b></td><td>Path to the file containing the agent join token.<br>
This token is used by agent nodes to join the cluster.<br></td></tr>
<tr><td><b>k3s_service_name</b></td><td>Name of the systemd service for k3s.<br>
Used for service management operations.<br></td></tr>
<tr><td><b>k3s_user</b></td><td>The user account under which k3s runs.<br>
Typically root for proper system access.<br></td></tr>
<tr><td><b>k3s_group</b></td><td>The group under which k3s runs.<br>
Typically root for proper system access.<br></td></tr>
<tr><td><b>k3s_github_api</b></td><td>Base URL for the GitHub API.<br>
Used to query k3s releases and download information.<br></td></tr>
<tr><td><b>k3s_github_project</b></td><td>The GitHub repository path for k3s.<br>
Format: owner/repository<br></td></tr>
<tr><td><b>k3s_github_url</b></td><td>Base URL for GitHub.<br>
Used for constructing download URLs.<br></td></tr>
<tr><td><b>k3s_deb_architecture_map</b></td><td>Mapping of Ansible architecture names to Debian/k3s architecture names.<br>
Used to determine the correct k3s binary to download.<br></td></tr>
<tr><td><b>k3s_architecture</b></td><td>The architecture of the target system.<br>
Automatically determined from ansible_architecture using the map above.<br></td></tr>
<tr><td><b>k3s_default_join_addr</b></td><td>Default address used when k3s_join_addr is not specified.<br>
Points to localhost, indicating this is the first server node.<br></td></tr>
<tr><td><b>k3s_needs_to_join</b></td><td>Boolean indicating whether this node needs to join an existing cluster.<br>
True if cluster-init is false AND a non-default join address is provided.<br>
Used internally to determine if the node should join vs initialize.<br></td></tr>
<tr><td><b>k3s_write_kubeconfig_mode</b></td><td>File permissions for the generated kubeconfig file.<br>
Default is 0644 (readable by all) for easier access.<br>
Consider 0600 for stricter security in production.<br></td></tr>
<tr><td><b>k3s_configuration</b></td><td>Base configuration dictionary merged into all k3s configurations.<br>
Sets the data directory for k3s cluster data.<br></td></tr>
<tr><td><b>k3s_server_configuration</b></td><td>Configuration dictionary specific to server nodes.<br>
Includes cluster initialization, token files, TLS SANs, and join settings.<br>
This is merged into k3s_configuration when k3s_mode is 'server'.<br></td></tr>
<tr><td><b>k3s_agent_configuration</b></td><td>Configuration dictionary specific to agent nodes.<br>
Includes server address and token file for joining the cluster.<br>
This is merged into k3s_configuration when k3s_mode is 'agent'.<br></td></tr>
</table>
<br>
</details>


### Tasks


#### File: tasks/configure.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Create k3s.env | ansible.builtin.template | False |
| K3S ¦ Create server token file | ansible.builtin.copy | True |
| K3S ¦ Create agent token file | ansible.builtin.copy | False |
| K3S ¦ Copy config.yml template | ansible.builtin.template | False |
| K3S ¦ Set restart-check variable | ansible.builtin.set_fact | True |
| K3S ¦ Copy extra configuration files | block | True |
| K3S ¦ Get extra file types | ansible.builtin.stat | False |
| K3S ¦ Set list for file sources | ansible.builtin.set_fact | True |
| K3S ¦ Set list for directory sources | ansible.builtin.set_fact | True |
| K3S ¦ Template extra file sources | ansible.builtin.template | True |
| K3S ¦ Template extra directory sources | ansible.builtin.include_tasks | True |

#### File: tasks/install.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Get latest release of k3s | block | True |
| K3S ¦ Get latest k3s release from github api | ansible.builtin.uri | False |
| K3S ¦ Set wanted k3s version to latest tag | ansible.builtin.set_fact | False |
| K3S ¦ Set wanted k3s version to {{ k3s_version }} | ansible.builtin.set_fact | True |
| K3S ¦ Get current k3s version | block | False |
| K3S ¦ Stat k3s version file | ansible.builtin.stat | False |
| K3S ¦ Get current k3s version | ansible.builtin.slurp | True |
| K3S ¦ Install k3s | block | True |
| K3S ¦ Set k3s package name to download | ansible.builtin.set_fact | False |
| K3S ¦ Download checksum file for k3s binary | ansible.builtin.get_url | False |
| K3S ¦ Extract correct checksum from checksum file | ansible.builtin.command | False |
| K3S ¦ Parse the expected checksum | ansible.builtin.set_fact | False |
| K3S ¦ Install k3s version:{{ k3s_version }} | ansible.builtin.get_url | False |
| K3S ¦ Update k3s version file | ansible.builtin.copy | False |
| K3S ¦ Set restart-check variable | ansible.builtin.set_fact | False |
| K3S ¦ Cleanup temporary directory | ansible.builtin.file | False |
| K3S ¦ Copy systemd service file for k3s | ansible.builtin.template | False |
| K3S ¦ Set reload-check & restart-check variable | ansible.builtin.set_fact | True |

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Set reload-check & restart-check variable | ansible.builtin.set_fact | False |
| K3S ¦ Import merge_variables.yml | ansible.builtin.include_tasks | False |
| K3S ¦ Import prerequisites.yml | ansible.builtin.include_tasks | False |
| K3S ¦ Import install.yml | ansible.builtin.include_tasks | False |
| K3S ¦ Import configure.yml | ansible.builtin.include_tasks | False |
| K3S ¦ Populate service facts | ansible.builtin.service_facts | False |
| K3S ¦ Set restart-check variable | ansible.builtin.set_fact | True |
| K3S ¦ Enable service: {{ k3s_service_name }} | ansible.builtin.service | False |
| K3S ¦ Reload systemd daemon | ansible.builtin.systemd | True |
| K3S ¦ Start service: {{ k3s_service_name }} | ansible.builtin.service | True |

#### File: tasks/merge_variables.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Merge configuration for server | block | True |
| K3S ¦ Merge server specific configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge listeners configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge datastore configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge networking configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge components configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge processes flags configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge experimental configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge configuration for agent | block | True |
| K3S ¦ Merge agent specific configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge networking configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge node configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge runtime configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge processes flags configuration | ansible.builtin.set_fact | False |
| K3S ¦ Merge experimental configuration | ansible.builtin.set_fact | False |

#### File: tasks/prerequisites.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Create directory {{ k3s_config_dir }} | ansible.builtin.file | False |
| K3S ¦ Create directory {{ k3s_data_dir }} | ansible.builtin.file | False |

#### File: tasks/recursive_copy_extra_dirs.yml

| Name | Module | Has Conditions |
| ---- | ------ | -------------- |
| K3S ¦ Ensure destination directory exists | ansible.builtin.file | False |
| K3S ¦ Create extra directory sources | ansible.builtin.file | True |
| K3S ¦ Template extra directory sources | ansible.builtin.template | True |







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
