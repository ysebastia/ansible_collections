# repos_rpmfusion

Configure RpmFusion repository

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_repositories_rpmfusion](#enable_repositories_rpmfusion)
  - [rpmfusion_supported_os](#rpmfusion_supported_os)
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

### enable_repositories_rpmfusion

#### Default value

```YAML
enable_repositories_rpmfusion: false
```

### rpmfusion_supported_os

#### Default value

```YAML
rpmfusion_supported_os: [redhat]
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
