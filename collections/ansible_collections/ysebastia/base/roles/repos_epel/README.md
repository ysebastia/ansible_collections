# repos_epel

Configure EPEL repository

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_repositories_epel](#enable_repositories_epel)
  - [epel_supported_os](#epel_supported_os)
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

### enable_repositories_epel

#### Default value

```YAML
enable_repositories_epel: false
```

### epel_supported_os

#### Default value

```YAML
epel_supported_os: [redhat]
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
