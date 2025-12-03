# 🚀 k3s Collection

![Ansible Badge](https://img.shields.io/badge/Ansible-E00?logo=ansible&logoColor=fff&style=for-the-badge)
![Rancher Badge](https://img.shields.io/badge/Rancher-0075A8?logo=rancher&logoColor=fff&style=for-the-badge)
![K3s Badge](https://img.shields.io/badge/K3s-FFC61C?logo=k3s&logoColor=000&style=for-the-badge)

Welcome to the k3s collection! This collection aims to provide essential ansible roles, modules, and playbooks, in order to let you deploy and manage your k3s cluster(s). This collection does not provide (like some other k3s collections) a ready-to-go playbook that you can use to deploy k3s immediately.

Instead, it provides you with the underlying bricks, fully customizable, in order to build your own workflow of deploying k3s. The reasoning behind it is that there are A LOT of ways to deploy a k3s cluster (single master with sqlite, single master with etcd, or postgres, multi masters, multi masters with dedicated etcd, etc...), and covering them all is not realistic.

This collection is still in its early stages, with the bare minimum content to let you deploy your cluster. With time, features will be added to push the management and day-2 operation aspect of management.
