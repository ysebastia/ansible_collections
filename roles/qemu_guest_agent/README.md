# qemu_guest_agent

Configure Qemu guest agent

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_qemu_guest_agent](#enable_base_qemu_guest_agent)
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

### enable_base_qemu_guest_agent

#### Default value

```YAML
enable_base_qemu_guest_agent: false
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
