# postfix

Configure Postfix agent

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_postfix](#enable_base_postfix)
  - [postfix_conf_main](#postfix_conf_main)
  - [postfix_loopback_only](#postfix_loopback_only)
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

### enable_base_postfix

#### Default value

```YAML
enable_base_postfix: true
```

### postfix_conf_main

#### Default value

```YAML
postfix_conf_main:
  - name: inet_interfaces
    value: all
```

### postfix_loopback_only

#### Default value

```YAML
postfix_loopback_only: true
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
