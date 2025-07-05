# nfs

Configure NFS

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_service_nfs](#enable_service_nfs)
  - [nfs_supported_os](#nfs_supported_os)
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

### enable_service_nfs

#### Default value

```YAML
enable_service_nfs: false
```

### nfs_supported_os

#### Default value

```YAML
nfs_supported_os: [debian]
```

## Dependencies

- ysebastia.base.firewalld

## License

GPL-3.0-only

## Author

Yannick Sebastia
