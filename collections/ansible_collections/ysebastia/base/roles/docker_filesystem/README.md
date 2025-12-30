# docker_filesystem

Configure filesystem for Docker

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_docker_filesystem](#enable_docker_filesystem)
  - [filesystem_docker_size](#filesystem_docker_size)
  - [filesystem_host_device](#filesystem_host_device)
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

### enable_docker_filesystem

#### Default value

```YAML
enable_docker_filesystem: false
```

### filesystem_docker_size

#### Default value

```YAML
filesystem_docker_size: 40g
```

### filesystem_host_device

#### Default value

```YAML
filesystem_host_device: []
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
