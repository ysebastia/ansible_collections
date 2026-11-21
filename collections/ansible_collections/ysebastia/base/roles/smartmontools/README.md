# smartmontools

Configure smartd disk monitoring and self-tests

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_smartmontools](#enable_base_smartmontools)
  - [smartmontools_mail_test](#smartmontools_mail_test)
  - [smartmontools_mailto](#smartmontools_mailto)
  - [smartmontools_options](#smartmontools_options)
  - [smartmontools_schedule](#smartmontools_schedule)
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

### enable_base_smartmontools

#### Default value

```YAML
enable_base_smartmontools: false
```

### smartmontools_mail_test

#### Default value

```YAML
smartmontools_mail_test: false
```

### smartmontools_mailto

#### Default value

```YAML
smartmontools_mailto: root
```

### smartmontools_options

#### Default value

```YAML
smartmontools_options: -a -o on -S on -n standby,10,q -W 4,50,60
```

### smartmontools_schedule

#### Default value

```YAML
smartmontools_schedule: (S/../.././02|L/../../6/03)
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
