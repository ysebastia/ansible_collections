# kvm_group

Append a user to KVM group

## Table of content

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_kvm_group](#enable_kvm_group)
  - [kvm_user_to_append](#kvm_user_to_append)
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

### enable_kvm_group

#### Default value

```YAML
enable_kvm_group: false
```

### kvm_user_to_append

#### Default value

```YAML
kvm_user_to_append:
```



## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
