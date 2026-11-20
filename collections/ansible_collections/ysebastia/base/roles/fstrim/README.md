# fstrim

Enable periodic TRIM of mounted filesystems

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_fstrim](#enable_base_fstrim)
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

### enable_base_fstrim

#### Default value

```YAML
enable_base_fstrim: false
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
