# docker_proxy

Configure proxy for docker

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [docker_https_proxy](#docker_https_proxy)
  - [enable_docker_proxy](#enable_docker_proxy)
  - [enable_docker_service](#enable_docker_service)
- [Dependencies](#dependencies)
- [License](#license)
- [Author](#author)

---

## Requirements

- Minimum Ansible version: `2.1`

## Default Variables

### ansible_action

#### Default value

```YAML
ansible_action: converge
```

### docker_https_proxy

#### Default value

```YAML
docker_https_proxy:
```

### enable_docker_proxy

#### Default value

```YAML
enable_docker_proxy: false
```

### enable_docker_service

#### Default value

```YAML
enable_docker_service: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
