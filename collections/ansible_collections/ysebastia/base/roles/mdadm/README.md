# mdadm

Configure mdadm RAID monitoring

## Table of contents

- [Requirements](#requirements)
- [Default Variables](#default-variables)
  - [ansible_action](#ansible_action)
  - [enable_base_mdadm](#enable_base_mdadm)
  - [mdadm_auto](#mdadm_auto)
  - [mdadm_mailaddr](#mdadm_mailaddr)
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

### enable_base_mdadm

#### Default value

```YAML
enable_base_mdadm: false
```

### mdadm_auto

#### Default value

```YAML
mdadm_auto: +imsm +1.x -all
```

### mdadm_mailaddr

#### Default value

```YAML
mdadm_mailaddr: root
```

## Dependencies

None.

## License

GPL-3.0-only

## Author

Yannick Sebastia
