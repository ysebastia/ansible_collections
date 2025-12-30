# tuned

Configure TUNED

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_tuned](#enable_base_tuned)
  - [tuned_profile](#tuned_profile)
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

### enable_base_tuned

#### Default value

```YAML
enable_base_tuned: true
```

### tuned_profile

#### Default value

```YAML
tuned_profile: balanced
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
