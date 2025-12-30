# cloud_kind

Deploy Kind

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [become_for_kind](#become_for_kind)
  - [cluster_name](#cluster_name)
  - [enable_develop_kind](#enable_develop_kind)
  - [kind_image](#kind_image)
  - [kind_version](#kind_version)
  - [kube_config](#kube_config)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

### become_for_kind

#### Default value

```YAML
become_for_kind: true
```

### cluster_name

#### Default value

```YAML
cluster_name: kind
```

### enable_develop_kind

#### Default value

```YAML
enable_develop_kind: true
```

### kind_image

#### Default value

```YAML
kind_image: kindest/node:v1.34.0
```

### kind_version

#### Default value

```YAML
kind_version: v0.30.0
```

### kube_config

#### Default value

```YAML
kube_config: /root/.kube/config
```

## Dependencies

- ysebastia.base.repos_docker_ce
- ysebastia.base.docker_service
- ysebastia.base.docker_group

## License

GPL-3.0-only

## Author

Yannick Sebastia
