# clamav

Configure ClamAV

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [clamav_enable_clamd](#clamav_enable_clamd)
  - [clamav_enable_selinux](#clamav_enable_selinux)
  - [clamav_syslog](#clamav_syslog)
  - [enable_base_clamav](#enable_base_clamav)
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
ansible_action: config
```

### clamav_enable_clamd

#### Default value

```YAML
clamav_enable_clamd: true
```

### clamav_enable_selinux

#### Default value

```YAML
clamav_enable_selinux: true
```

### clamav_syslog

#### Default value

```YAML
clamav_syslog: false
```

### enable_base_clamav

#### Default value

```YAML
enable_base_clamav: false
```



## Dependencies

- ysebastia.base.repos_epel

## License

GPL-3.0-only

## Author

Yannick Sebastia
