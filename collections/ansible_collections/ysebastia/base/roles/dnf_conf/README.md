# dnf_conf

Manage /etc/dnf/dnf.conf settings

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [dnf_conf_installonly_limit](#dnf_conf_installonly_limit)
  - [enable_base_dnf_conf](#enable_base_dnf_conf)
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

### dnf_conf_installonly_limit

#### Default value

```YAML
dnf_conf_installonly_limit: 2
```

### enable_base_dnf_conf

#### Default value

```YAML
enable_base_dnf_conf: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
